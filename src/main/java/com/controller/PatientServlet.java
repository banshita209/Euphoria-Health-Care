package com.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Address_dao_impl;
import com.dao.Appointment_dao_impl;
import com.dao.Common_dao_impl;
import com.dao.Doctor_dao;
import com.dao.Doctor_dao_impl;
import com.dao.HealthTracker_dao_impl;
import com.dao.OTP_dao_impl;
import com.dao.Patient_dao_impl;
import com.dao.Payment_dao;
import com.dao.Payment_dao_impl;
import com.dao.Prescription_dao_impl;
import com.dao.Report_dao_impl;
import com.google.zxing.WriterException;
import com.model.Address;
import com.model.Appointment;
import com.model.Doctor;
import com.model.HealthTracker;
import com.model.OTP;
import com.model.Patient;
import com.model.Payment;
import com.model.Prescription;
import com.model.Report;
import com.utility.EmailSendingUtility;
import com.utility.GenerateQRCode;

/**
 * Servlet implementation class PatientServlet
 */
@WebServlet("/PatientServlet")
public class PatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PatientServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("patient servlet : doget");
		String action = request.getParameter("action");
		System.out.println("action:" + action);

		HttpSession session = request.getSession();

		Common_dao_impl<Patient> common_dao_patient = new Patient_dao_impl();
		Address_dao_impl address_dao_impl = new Address_dao_impl();
		HealthTracker_dao_impl health_dao_impl = new HealthTracker_dao_impl();
		Common_dao_impl<Doctor> doctor_dao_impl = new Doctor_dao_impl();
		Appointment_dao_impl appointment_dao_impl = new Appointment_dao_impl();
		Report_dao_impl report_dao_impl = new Report_dao_impl();

		// ------------------------getting profile data------

		if (action != null && (action.equals("profile"))) {

			System.out.println("If condition patient servlet");
			Patient patient = (Patient) session.getAttribute("user");

			System.out.println("getting the data");

			System.out.println(patient.toString());
			request.setAttribute("user", patient);

			RequestDispatcher requestDispatcher = request.getRequestDispatcher("pages-profile-patient.jsp");
			requestDispatcher.forward(request, response);

		}
		// ------------------------------------healthtracker getting
		else if (action.equals("HealthTracker")) {

			Patient patient = (Patient) session.getAttribute("user");
			System.out.println("Userid:" + patient.getPatient_id());

			HealthTracker healthTracker = new HealthTracker();
			healthTracker = health_dao_impl.get_current_HealthTracker(patient.getPatient_id());

			request.setAttribute("hd", healthTracker);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("pages-hd-show.jsp");
			requestDispatcher.forward(request, response);

		}
		// ----------change password----------
		else if (action != null && (action.equals("ConformPassword"))) {

			RequestDispatcher requestDispatcher = request.getRequestDispatcher("pages-change-password.jsp.jsp");
			requestDispatcher.forward(request, response);
		}
		// ---------------updating password
		else if (action.equals("update")) {

			Patient patient = (Patient) session.getAttribute("user");

			System.out.println(patient.toString());
			System.out.println("updating patient password");

			String new_password = request.getParameter("new_password");
			String conform_password = request.getParameter("conform_password");
			System.out.println("new_password:" + new_password);
			System.out.println("conform_password:" + conform_password);
			if (new_password.equals(conform_password)) {
				System.out.println("In If Condition");
				patient.setLog_password(new_password);

				common_dao_patient.update(patient);
				session.setAttribute("user", patient);
				request.setAttribute("user", patient);

				RequestDispatcher requestDispatcher = request.getRequestDispatcher("pages-profile-patient.jsp");
				requestDispatcher.forward(request, response);

			} else {
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("pages-change-password.jsp");
				requestDispatcher.forward(request, response);
			}
		}
		// -------------------------------get area-----
		else if (action.equals("get_area")) {
			System.out.println("in the get area");

			List<String> area = address_dao_impl.getArea();
			for (String str : area) {
				System.out.println(str + "\n");
			}
			request.setAttribute("area", area);
			RequestDispatcher dispatcher = request.getRequestDispatcher("book_doctor-appoint_meeting.jsp");
			dispatcher.forward(request, response);
		}
		// -------------get doctor for appointment-----
		else if (action.equals("GetDoctorForAppointment")) {
			System.out.println("in the GetDoctorForAppointment condition");

			long id = Long.parseLong(request.getParameter("id"));

			Doctor doctor = doctor_dao_impl.get(id);
			System.out.println("doctor: " + doctor.toString());

			request.setAttribute("doctor", doctor);
			RequestDispatcher dispatcher = request.getRequestDispatcher("book_doctor-appoint_meeting.jsp");
			dispatcher.forward(request, response);

		}
		// ----------------------get all appointment----------
		else if (action.equals("get_all_appointment")) {

			System.out.println("get all appointment condition ");
			Patient patient = (Patient) session.getAttribute("user");
			List<Appointment> appointments = appointment_dao_impl.getAllappointment(patient.getPatient_id());
			request.setAttribute("appointments", appointments);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("pages-appointment-patient.jsp");
			requestDispatcher.forward(request, response);
		}
		// ---------------------------------request Appointment------------------------
		else if (action.equals("RequestForAppointment")) {
			System.out.println("request doctor condition");

			Doctor doctor = doctor_dao_impl.get(Long.parseLong(request.getParameter("id")));

			Appointment appointment = new Appointment();
			appointment.setDoctor(doctor);
			appointment.setPatient((Patient) session.getAttribute("user"));
			appointment.setStatus("pending");

			long date_mili = System.currentTimeMillis();
			java.sql.Date date = new java.sql.Date(date_mili);
			appointment.setBooking_date(date);

			System.out.println(appointment.toString());

			appointment_dao_impl.insert(appointment);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("Patient_home.jsp");
			requestDispatcher.forward(request, response);
		}
		// ------------------deny appointment
		else if (action.equals("deny_appointment")) {
			System.out.println("deny_appointment condition");

			Long id = Long.parseLong(request.getParameter("id"));
			Appointment appointment = appointment_dao_impl.get(id);

			appointment.setStatus("denied");
			System.out.println(appointment.toString());
			appointment_dao_impl.update(appointment);
			response.sendRedirect("PatientServlet?action=get_all_appointment");
		}
		// ------------------all report
		else if (action.equals("getallreport")) {
			System.out.println("get all report condition");
			Patient patient = (Patient) session.getAttribute("user");
			List<Report> reports = report_dao_impl.allReport(patient.getPatient_id());

			request.setAttribute("reports", reports);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("showAllReport-patient.jsp");
			requestDispatcher.forward(request, response);
		} else if (action.equals("viewReport")) {
			long id = Integer.parseInt(request.getParameter("r_id"));
			System.out.println("id=" + id);
			Report report = report_dao_impl.get(id);

			// System.out.println("length of path=");
			String path = report.getR_path();
			String r_path = path.substring(0, 61);
			System.out.println("substring path " + r_path);

			String fullPdfPath = r_path + id + ".pdf";

			try {
				if ((new File(fullPdfPath)).exists()) {
					System.out.println("aaaaaaaaaaaaaaaaaaaaaaa file" + fullPdfPath);
					Process p = Runtime.getRuntime().exec("rundll32 url.dll,FileProtocolHandler " + fullPdfPath);
					p.waitFor();
				} else {
					System.out.println("File is not exists");

				}
				System.out.println("Done");
			} catch (Exception ex) {
				ex.printStackTrace();
			}
			response.sendRedirect("PatientServlet?action=getallreport");
		}

		// ------------------graph
		else if (action.equals("graph")) {
			Patient patient = (Patient) session.getAttribute("user");

			System.out.println("in post in graph condition");
			List<HealthTracker> rHealthTracker = health_dao_impl.getByGraphId(patient.getPatient_id());
			session.setAttribute("gHealthTracker", rHealthTracker);

			request.setAttribute("rHealthTracker", rHealthTracker);
			RequestDispatcher rd = request.getRequestDispatcher("graph.jsp");

			rd.forward(request, response);
		}
		// --------------------------------show presrption
		else if (action.equals("show_prescription")) {
			System.out.println("In Show prescription Condition in patient servlet");
			Patient patient = (Patient) session.getAttribute("user");
			long id = patient.getPatient_id();

			Prescription_dao_impl prescription_dao_impl = new Prescription_dao_impl();
			Payment_dao payment_dao_impl = new Payment_dao_impl();

			List<Prescription> prescriptions = prescription_dao_impl.get_patient_priscription(id);
			List<Payment> payment = payment_dao_impl.get_payment(id);

			request.setAttribute("prescriptions", prescriptions);
			request.setAttribute("paymentList", payment);
			System.out.println("after set list of prescriptions");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("show_prescriptions.jsp");
			requestDispatcher.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("patient servlet : dopost");
		String action = request.getParameter("action");
		System.out.println("action:" + action);

		HttpSession session = request.getSession();

		Common_dao_impl<Patient> common_dao_patient = new Patient_dao_impl();
		Doctor_dao doctor_dao_impl = new Doctor_dao_impl();
		Common_dao_impl<Appointment> appointment_dao_impl = new Appointment_dao_impl();
		HealthTracker_dao_impl healthtracker_dao_impl = new HealthTracker_dao_impl();
		Patient_dao_impl patient_dao_impl = new Patient_dao_impl();

		// ------------------registration & updating-------------------------------

		if (action.equals("registration") || action.equals("Update")) {

			Address address = new Address();

			address.setType("personal");
			address.setAdd_detail(request.getParameter("p_add_detail"));
			address.setLandmark(request.getParameter("p_landmark"));
			address.setArea(request.getParameter("p_add_area"));
			address.setCity(request.getParameter("p_city"));
			address.setPincode(Integer.parseInt(request.getParameter("p_pincode")));
			System.out.println(address.toString());

			Patient patient = new Patient();
			patient.setPatient_name(request.getParameter("name"));
			patient.setLog_email(request.getParameter("email"));
			patient.setLog_password(request.getParameter("password"));
			patient.setPatient_gender(request.getParameter("gender"));
			String dob = request.getParameter("dob");
			System.out.println("Dob : " + dob);
			patient.setPatient_dob(java.sql.Date.valueOf(dob));
			/*
			 * try { patient.setPatient_dob((java.sql.Date) new
			 * SimpleDateFormat("dd-MM-yyyy").parse(dob)); } catch (ParseException e1) {
			 * e1.printStackTrace(); }
			 */
			patient.setPatient_mobile(Long.parseLong(request.getParameter("mobile")));

			// ------------------registration------------------------------------------

			if (action.equals("registration")) {
				OTP otp = new OTP();
				long id = otp.getId();
				System.out.println(id);
				String email = request.getParameter("email");
				OTP_dao_impl common = new OTP_dao_impl();
				// common.get(id);
				otp = common.realOTP(email);

				int sendotp = otp.getSendOTP()/* .getSendOTP() */;
				int userotp = Integer.parseInt(request.getParameter("OTP"));
				System.out.println("SENDOTP:" + sendotp + "   USEROTP:" + userotp);

				boolean value = patient_dao_impl.checkUserAvailability(patient.getLog_email());

				if (value == true) {
					if (sendotp == userotp) {
						long date_mili = System.currentTimeMillis();
						patient.setCreate_date(new Date(date_mili));
						patient.setAddress(address);
						System.out.println(patient.toString());

						System.out.println("inserting patient");
						common_dao_patient.insert(patient);
						GenerateQRCode code = new GenerateQRCode();
						try {
							patient.setPatient_qrcode(
									code.createQRImage(patient.getLog_email(), patient.getPatient_id()));
							EmailSendingUtility emailSendingUtility = new EmailSendingUtility();
							String msg = "YOUR QR CODE:";
							String path = patient.getPatient_qrcode();
							System.out.println("path:" + path);
							emailSendingUtility.sendPrescriptionorQR(email, msg, path);
						} catch (WriterException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						long date = System.currentTimeMillis();

						patient.setUpdate_date(new Date(date));

						System.out.println(patient.toString());
						System.out.println("updating patient");
						common_dao_patient.update(patient);
						session.setAttribute("category", "patient");
						session.setAttribute("user", patient);
						request.setAttribute("action", "registered");
						RequestDispatcher requestDispatcher = request.getRequestDispatcher("Patient_home.jsp");
						requestDispatcher.forward(request, response);
					} else {
						RequestDispatcher requestDispatcher = request.getRequestDispatcher("registration(patient).jsp");
						requestDispatcher.forward(request, response);
					}
				} else {

					request.setAttribute("Use another email id. A user is registered from this email id.", "msg");
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("registration(patient).jsp");
					requestDispatcher.forward(request, response);
				}
			}
			// -------------------------------------updating profile----------
			else if (action.equals("Update")) {
				// ---------------updating data (registration)
				patient.setPatient_id(Long.parseLong(request.getParameter("id")));
				// address.setAdd_id(Long.parseLong(request.getParameter("add_id")));
				patient.setAddress(address);
				Patient patient2=(Patient) session.getAttribute("user");
				patient.setLog_password(patient2.getLog_password());

				GenerateQRCode code = new GenerateQRCode();
				try {
					patient.setPatient_qrcode(code.createQRImage(patient.getLog_email(), patient.getPatient_id()));
				} catch (WriterException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				long date = System.currentTimeMillis();

				patient.setUpdate_date(new Date(date));

				System.out.println(patient.toString());
				System.out.println("updating patient");
				common_dao_patient.update(patient);
				session.setAttribute("user", patient);
				request.setAttribute("user", patient);

				RequestDispatcher requestDispatcher = request.getRequestDispatcher("pages-profile-patient.jsp");
				requestDispatcher.forward(request, response);
			}
		}
		// ----------------------------edit profile---------------
		if (action.equals("Edit Profile")) {

			Patient patient = (Patient) session.getAttribute("user");
			patient.toString();
			request.setAttribute("patient", patient);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("Edit(patient).jsp");
			requestDispatcher.forward(request, response);
		}
		// ---------------------------------inserting data in health tracker
		if (action.equals("hd_insert")) {

			HealthTracker healthTracker = new HealthTracker();

			long date_mili = System.currentTimeMillis();
			System.out.println("date" + new Date(date_mili));
			HealthTracker ht = healthtracker_dao_impl.get_date_hd(new Date(date_mili));

			if (ht != null) {
				System.out.println(ht.toString());
				System.out.println("already hd on this date");
				request.setAttribute("msg", "You cannot insert more than one Health Tracker on same day");
			} else {

				healthTracker.setBlood_glucose(Float.parseFloat(request.getParameter("blood_glucose")));
				healthTracker.setBlood_pressure(Float.parseFloat(request.getParameter("blood_pressure")));
				healthTracker.setPatient((Patient) session.getAttribute("user"));
				healthTracker.setHeight(Float.parseFloat(request.getParameter("height")));
				healthTracker.setWeight(Float.parseFloat(request.getParameter("weight")));
				healthTracker.setCreated_date(new java.sql.Date(date_mili));
				System.out.println(healthTracker.toString());
				healthtracker_dao_impl.insert(healthTracker);
				System.out.println("hd inserted");
				request.setAttribute("hd", healthTracker);
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher("Patient_home.jsp");
			dispatcher.forward(request, response);

		}
		// ------------------------------search doctor for appointment
		else if (action.equals("search_doctor")) {
			System.out.println("Search Doctor condition fullfill");

			String area = request.getParameter("source");
			System.out.println("Area : " + area);
			List<Doctor> doctors = doctor_dao_impl.getDoctorbyArea(area);
			List<String> list_area = new Address_dao_impl().getArea();
			// System.out.println("above for each" + doctors.get(0).getDr_name());
			for (Doctor doctor : doctors) {
				System.out.println("in for each");
				System.out.println(doctor.toString());
				System.out.println("\n");
			}
			System.out.println("after for each");
			request.setAttribute("area", list_area);
			request.setAttribute("doctors", doctors);
			System.out.println("after for each");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("book_doctor-appoint_meeting.jsp");

			requestDispatcher.forward(request, response);
		}
		// -------------------------------------change password
		else if (action != null && (action.equals("ChangePassword"))) {

			Patient patient = (Patient) session.getAttribute("user");
			System.out.println(patient.toString());
			String old_password = patient.getLog_password();
			System.out.println("Old Password:" + old_password);
			System.out.println("updating patient password");

			String user_password = request.getParameter("old_password");
			String new_password = request.getParameter("new_password");
			String conform_password = request.getParameter("conform_password");
			System.out.println("user password:" + user_password);
			System.out.println("new_password:" + new_password);
			System.out.println("conform_password:" + conform_password);
			if (old_password.equals(user_password)) {
				System.out.println("In If Condition");
				patient.setLog_password(new_password);

				common_dao_patient.update(patient);
				session.setAttribute("user", patient);
				request.setAttribute("user", patient);

				RequestDispatcher requestDispatcher = request.getRequestDispatcher("Patient_home.jsp");
				requestDispatcher.forward(request, response);
			} else {
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("pages-change-password.jsp");
				requestDispatcher.forward(request, response);
			}

		}

	}
}