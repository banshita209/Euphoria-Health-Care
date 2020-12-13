package com.controller;

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

import com.dao.Appointment_dao_impl;
import com.dao.Common_dao_impl;
import com.dao.Doctor_dao_impl;
import com.dao.Meeting_dao_impl;
import com.dao.OTP_dao_impl;
import com.dao.Patient_dao_impl;
import com.model.Address;
import com.model.Appointment;
import com.model.Doctor;
import com.model.MedicalRepresentative;
import com.model.Meeting;
import com.model.OTP;
import com.model.Patient;
import com.utility.EmailSendingUtility;

/**
 * Servlet implementation class DoctorServlet
 */
@WebServlet("/DoctorServlet")
public class DoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DoctorServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("doctor servlet : doget");
		String action = request.getParameter("action");
		System.out.println("Action=" + action);

		HttpSession session = request.getSession();

		Common_dao_impl<Doctor> common_dao_doctor = new Doctor_dao_impl();
		Appointment_dao_impl appointnment_dao = new Appointment_dao_impl();
		Meeting_dao_impl meeting_dao_impl = new Meeting_dao_impl();
		Patient_dao_impl patient_dao_impl = new Patient_dao_impl();
		EmailSendingUtility emailSendingUtility = new EmailSendingUtility();

		if (action != null && (action.equals("profile"))) {
			// Long id = Long.parseLong(request.getParameter("id"));

			Doctor doctor = (Doctor) session.getAttribute("user");

			System.out.println("getting the data");
			// doctor = common_dao_doctor.get(id);

			System.out.println(doctor.toString());
			request.setAttribute("user", doctor); // setting the object of doctor
			// RequestDispatcher requestDispatcher =
			// request.getRequestDispatcher("Profile(doctor).jsp");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("pages-profile-doctor.jsp");
			requestDispatcher.forward(request, response);
		}
		// -----------------------------------request appointment
		else if (action.equals("request_appointments")) {
			System.out.println("request_appointments condition");

			Doctor doctor = (Doctor) session.getAttribute("user");

			List<Appointment> appointments = appointnment_dao.getRequestedAppointment(doctor.getDr_id());

			request.setAttribute("appointments", appointments);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("pages-requested_appointment.jsp");
			requestDispatcher.forward(request, response);
		}
		// ------------------accept appointment
		else if (action.equals("accept_appointment")) {
			System.out.println("accept_appointment condition");
			Long id = Long.parseLong(request.getParameter("id"));
			Appointment appointment = appointnment_dao.get(id);
			request.setAttribute("appointment", appointment);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("confirm_appointment(doctor).jsp");
			requestDispatcher.forward(request, response);

		}
		// ----------------------------all appointment
		else if (action.equals("all_appointments")) {
			System.out.println("all_appointment condition ");

			Doctor doctor = (Doctor) session.getAttribute("user");
			List<Appointment> appointments = appointnment_dao.getAllAppointmentfordoctor(doctor.getDr_id());
			request.setAttribute("appointments", appointments);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("All_appointments.jsp");
			requestDispatcher.forward(request, response);

		}
		// ------------------today appointment
		else if (action.equals("today_appointments")) {
			System.out.println("today_appointment condition");
			Doctor doctor = (Doctor) session.getAttribute("user");
			List<Appointment> appointments1 = appointnment_dao.getTodayAppointment(doctor.getDr_id());
			request.setAttribute("appointments", appointments1);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("Todays_appointments.jsp");
			requestDispatcher.forward(request, response);
		}
		// ------------------deny appointment
		else if (action.equals("deny_appointment")) {
			System.out.println("deny_appointment condition");
			String type = request.getParameter("type");
			System.out.println("type " + type);
			Long id = Long.parseLong(request.getParameter("id"));
			Appointment appointment = appointnment_dao.get(id);

			appointment.setStatus("denied");
			System.out.println(appointment.toString());

			Patient patient = new Patient();
			patient = (appointment.getPatient());
			String email = patient.getLog_email();
			System.out.println("Email of Patient:" + email);
			String dr_name = appointment.getDoctor().getDr_name();
			String msg = "Your Appointment is denny by Dr." + dr_name;

			emailSendingUtility.sendMail(email, msg, "appointment");
			appointnment_dao.update(appointment);

			if (type.equals("T")) {
				response.sendRedirect("DoctorServlet?action=today_appointments");

			} else if (type.equals("A")) {
				response.sendRedirect("DoctorServlet?action=all_appointments");

			} else {
				response.sendRedirect("DoctorServlet?action=request_appointments");

			}
		}
		// ----------------------------all meeting
		else if (action.equals("all_meetings")) {
			System.out.println("all_appointment condition ");

			Doctor doctor = (Doctor) session.getAttribute("user");
			List<Meeting> meetings = meeting_dao_impl.getAllMeetingfordoctor(doctor.getDr_id());
			request.setAttribute("meetings", meetings);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("All_meetings.jsp");
			requestDispatcher.forward(request, response);

		}
		// -----------------------------------request meeting
		else if (action.equals("request_meetings")) {
			System.out.println("request_meetings condition");

			Doctor doctor = (Doctor) session.getAttribute("user");

			List<Meeting> meetings = meeting_dao_impl.getRequestedMeeting(doctor.getDr_id());

			request.setAttribute("meetings", meetings);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("pages-requested_meeting.jsp");
			requestDispatcher.forward(request, response);
		}
		// ------------------accept meeting
		else if (action.equals("accept_meeting")) {
			System.out.println("accept_meeting condition");
			Long id = Long.parseLong(request.getParameter("id"));
			Meeting meeting = meeting_dao_impl.get(id);
			request.setAttribute("meeting", meeting);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("confirm_meeting(doctor).jsp");
			requestDispatcher.forward(request, response);
		}
		// ------------------deny meeting
		else if (action.equals("deny_meeting")) {
			System.out.println("deny_meeting condition");
			String type = request.getParameter("type");
			System.out.println("type " + type);
			Long id = Long.parseLong(request.getParameter("id"));
			Meeting meeting = meeting_dao_impl.get(id);

			meeting.setStatus("denied");
			System.out.println(meeting.toString());

			MedicalRepresentative medicalRepresentative = new MedicalRepresentative();
			medicalRepresentative = (meeting.getMr());
			String email = medicalRepresentative.getLog_email();
			System.out.println("Email of mr:" + email);
			String dr_name = meeting.getDoctor().getDr_name();
			String msg = "Your Meeting is deny by Dr." + dr_name;

			emailSendingUtility.sendMail(email, msg, "meeting");

			meeting_dao_impl.update(meeting);

			if (type.equals("T")) {
				response.sendRedirect("DoctorServlet?action=today_meetings");

			} else if (type.equals("A")) {
				response.sendRedirect("DoctorServlet?action=all_meetings");

			}

			else {
				response.sendRedirect("DoctorServlet?action=request_meetings");

			}
		}
		// ------------------today meeting
		else if (action.equals("today_meetings")) {
			System.out.println("today_meeting condition");
			Doctor doctor = (Doctor) session.getAttribute("user");
			List<Meeting> meetings = meeting_dao_impl.getTodayMeeting(doctor.getDr_id());
			request.setAttribute("meetings", meetings);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("Todays_meetings.jsp");
			requestDispatcher.forward(request, response);
		}
		// ------------------View Patient
		else if (action.equals("view_patient")) {
			System.out.println("view_patient condition");

			Long patient_id = Long.parseLong(request.getParameter("patient_id"));
			Long app_id = Long.parseLong(request.getParameter("app_id"));

			System.out.println("patient id=" + patient_id + " ap_id =" + app_id);

			Patient patient = patient_dao_impl.get(patient_id);
			Appointment appointment = appointnment_dao.get(app_id);
			System.out.println(patient.toString());
			System.out.println(appointment.toString());

			request.setAttribute("patient", patient);
			request.setAttribute("app", appointment);

			RequestDispatcher requestDispatcher = request.getRequestDispatcher("ViewPatient-docotor.jsp");
			requestDispatcher.forward(request, response);
		}
		// ------------------View changeStatusvisited
		else if (action.equals("changeStatusvisited")) {
			Long id = Long.parseLong(request.getParameter("m_id"));
			Meeting meeting = meeting_dao_impl.get(id);
			meeting.setStatus(request.getParameter("visited"));
			System.out.println(meeting.toString());
			meeting_dao_impl.update(meeting);
			response.sendRedirect("DoctorServlet?action=today_meetings");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doctor servlet : dopost");
		String action = request.getParameter("action");
		System.out.println("Action=" + action);

		HttpSession session = request.getSession();

		Common_dao_impl<Doctor> common_dao_doctor = new Doctor_dao_impl(); // creating an object of doctor dao
		Appointment_dao_impl appointnment_dao = new Appointment_dao_impl();
		Meeting_dao_impl meeting_dao_impl = new Meeting_dao_impl();

		if (action != null && (action.equals("registration") || action.equals("Update"))) {

			Doctor doctor = new Doctor();
			Address clinic_add = new Address();

			clinic_add.setType("professional");
			clinic_add.setAdd_detail(request.getParameter("c_add_detail"));
			clinic_add.setLandmark(request.getParameter("c_add_landmark"));
			clinic_add.setArea(request.getParameter("c_add_area"));
			clinic_add.setCity(request.getParameter("c_city"));
			clinic_add.setPincode(Integer.parseInt(request.getParameter("c_pincode")));
			System.out.println(clinic_add.toString());

			Address personal_add = new Address();
			personal_add.setType("personal");
			personal_add.setAdd_detail(request.getParameter("p_add_detail"));
			personal_add.setLandmark(request.getParameter("p_add_landmark"));
			personal_add.setArea(request.getParameter("p_add_area"));
			personal_add.setCity(request.getParameter("p_city"));
			personal_add.setPincode(Integer.parseInt(request.getParameter("p_pincode")));
			System.out.println(personal_add.toString());

			doctor.setDr_name(request.getParameter("name"));
			doctor.setLog_email(request.getParameter("email"));
			doctor.setLog_password(request.getParameter("password"));
			doctor.setDr_gender(request.getParameter("gender"));
			doctor.setDr_mobile(Long.parseLong(request.getParameter("mobile")));
			doctor.setIfd((byte) 1);
			String dob = request.getParameter("dob");
			doctor.setDr_dob(Date.valueOf(dob));

			/*
			 * System.out.println("Dob : " + dob);
			 * 
			 * try { doctor.setDr_dob((Date) new SimpleDateFormat("dd-MM-yyyy").parse(dob));
			 * } catch (ParseException e1) { e1.printStackTrace(); }
			 */
			doctor.setClinic_address(clinic_add);
			doctor.setPersonal_address(personal_add);
			doctor.setDr_qualification(request.getParameter("qualification"));
			doctor.setSpecaility(request.getParameter("specaility"));
			doctor.setVisiting_fees(Float.parseFloat(request.getParameter("visiting_fees")));
			doctor.setExperience(Float.parseFloat(request.getParameter("experience")));

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

				Doctor_dao_impl Doctor_dao_impl = new Doctor_dao_impl();

				boolean value = Doctor_dao_impl.checkUserAvailability(doctor.getLog_email());

				System.out.println("boolean value =" + value);
				if (value == true) {

					if (sendotp == userotp) {
						long date_mili = System.currentTimeMillis();
						doctor.setCreate_date(new Date(date_mili));
						// ---------------inserting data (registration)
						System.out.println(doctor.toString());
						System.out.println("inserting doctor");
						common_dao_doctor.insert(doctor);

						session.setAttribute("category", "doctor");
						session.setAttribute("user", doctor);

						request.setAttribute("action", "registered");
						request.setAttribute("msg", "Hello, Dr." + doctor.getDr_name()
								+ ", You are successfully reqistered as doctor but to get certified by admin you need to send your qualification certificate and license to our email: euphoria.abgp@gmail.com and you won't be able to get appointments through Euphoria unless you are certified by admin");
						RequestDispatcher requestDispatcher = request.getRequestDispatcher("Doctor_home.jsp");
						requestDispatcher.forward(request, response);
					} else {
						String msg = "Your OTP does not match from the sent otp.";
						request.setAttribute("msg", msg);
						RequestDispatcher requestDispatcher = request
								.getRequestDispatcher("forms-doctor-registration.jsp");
						requestDispatcher.forward(request, response);
					}
				}

				else {

					System.out.println("email exits required new email");
					String msg = "Use another email id. A user is registered from this email id.";
					request.setAttribute("msg", msg);
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("forms-doctor-registration.jsp");
					requestDispatcher.forward(request, response);

				}

			} else if (action.equals("Update")) {

				// ---------------updating data (registration)
				doctor.setDr_id(Long.parseLong(request.getParameter("id")));
				
				
				Doctor patient2=(Doctor) session.getAttribute("user");
				doctor.setLog_password(patient2.getLog_password());
				long date = System.currentTimeMillis();

				doctor.setUpdate_date(new Date(date));

				System.out.println(doctor.toString());
				System.out.println("updating doctor");
				common_dao_doctor.update(doctor);

				session.setAttribute("user", doctor);

				request.setAttribute("user", doctor);

				RequestDispatcher requestDispatcher = request.getRequestDispatcher("pages-profile-doctor.jsp");
				requestDispatcher.forward(request, response);

			}

		} else if (action.equals("Edit profile")) {
			/* Long id = Long.parseLong(request.getParameter("id")); */

			System.out.println("getting the data");
			Doctor doctor = (Doctor) session.getAttribute("user");

			doctor.toString();
			request.setAttribute("user", doctor); // setting the object of doctor
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("Edit(doctor).jsp");
			requestDispatcher.forward(request, response);

		}
		if (action != null && (action.equals("ChangePassword"))) {

			Doctor doctor = (Doctor) session.getAttribute("user");

			System.out.println(doctor.toString());
			String old_password = doctor.getLog_password();
			System.out.println("Old Password:" + old_password);
			System.out.println("updating doctor password");

			String user_password = request.getParameter("old_password");
			String new_password = request.getParameter("new_password");
			String conform_password = request.getParameter("conform_password");
			System.out.println("user password:" + user_password);
			System.out.println("new_password:" + new_password);
			System.out.println("conform_password:" + conform_password);
			if (old_password.equals(user_password)) {
				System.out.println("In If Condition");
				doctor.setLog_password(new_password);

				common_dao_doctor.update(doctor);
				session.setAttribute("user", doctor);
				request.setAttribute("user", doctor);

				RequestDispatcher requestDispatcher = request.getRequestDispatcher("Doctor_home.jsp");
				requestDispatcher.forward(request, response);
			} else {
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("pages-change-password.jsp");
				requestDispatcher.forward(request, response);
			}
		} else if (action.equals("confirm_appointment")) {
			System.out.println("confirm_appointment condition");
			Long id = Long.parseLong(request.getParameter("id"));
			Appointment appointment = appointnment_dao.get(id);

			String date = request.getParameter("appointment_date");
			String time = request.getParameter("appointment_time");
			System.out.println("date " + date + "time" + time);
			try {
				appointment.setAppointment_time(time);
				appointment.setAppointment_date(date);

			} catch (Exception e) {
				System.out.println("error occured");
			}
			appointment.setStatus("accepted");
			System.out.println(appointment.toString());

			String email = appointment.getPatient().getLog_email();
			String dr_name = appointment.getDoctor().getDr_name();
			String msg = "Your Appointment is confirmed by Dr." + dr_name + " \n your appointment date: " + date
					+ " \n Your Appointment Time:" + time;
			EmailSendingUtility emailSendingUtility = new EmailSendingUtility();
			emailSendingUtility.sendMail(email, msg, "appointment");

			appointnment_dao.update(appointment);
			response.sendRedirect("DoctorServlet?action=request_appointments");

		} else if (action.equals("confirm_meeting")) {
			System.out.println("confirm_meeting condition");
			Long id = Long.parseLong(request.getParameter("id"));
			Meeting meeting = meeting_dao_impl.get(id);

			String date = request.getParameter("appointment_date");
			String time = request.getParameter("appointment_time");
			System.out.println("date " + date + "time" + time);
			try {
				meeting.setAppointment_time(time);
				meeting.setAppointment_date(date);

			} catch (Exception e) {
				System.out.println("error occured");
			}
			MedicalRepresentative medicalRepresentative = new MedicalRepresentative();
			medicalRepresentative = (meeting.getMr());
			String email = medicalRepresentative.getLog_email();
			System.out.println("Email of Patient:" + email);

			String dr_name = meeting.getDoctor().getDr_name();
			String msg = "Your Appointment is confirmed by Dr." + dr_name + " \n your meeting date: " + date
					+ " \n Your meeting Time:" + time;
			EmailSendingUtility emailSendingUtility = new EmailSendingUtility();
			emailSendingUtility.sendMail(email, msg, "meeting");

			meeting.setStatus("accepted");
			System.out.println(meeting.toString());

			meeting_dao_impl.update(meeting);
			response.sendRedirect("DoctorServlet?action=request_meetings");

		} else if (action.equals("Change Status")) {
			Long id = Long.parseLong(request.getParameter("app_id"));
			Appointment appointment = appointnment_dao.get(id);
			appointment.setStatus(request.getParameter("status"));
			System.out.println(appointment.toString());
			appointnment_dao.update(appointment);
			response.sendRedirect("DoctorServlet?action=today_appointments");
		}

	}

}