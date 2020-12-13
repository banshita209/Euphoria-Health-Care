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
import com.dao.Analysis_dao_impl;
import com.dao.Common_dao_impl;
import com.dao.Doctor_dao_impl;
import com.dao.MedicalRepresentative_dao_impl;
import com.dao.Meeting_dao_impl;
import com.dao.OTP_dao_impl;
import com.model.Address;
import com.model.Analysis;
import com.model.Doctor;
import com.model.MedicalRepresentative;
import com.model.Meeting;
import com.model.OTP;
import com.model.Patient;

/**
 * Servlet implementation class MedicalRepresentativeServlet
 */
@WebServlet("/MedicalRepresentativeServlet")
public class MedicalRepresentativeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MedicalRepresentativeServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("MR servlet : doget");
		String action = request.getParameter("action");
		System.out.println("Action=" + action);

		HttpSession session = request.getSession();

		Doctor_dao_impl doctor_dao_impl = new Doctor_dao_impl();
		Address_dao_impl address_dao_impl = new Address_dao_impl();
		Common_dao_impl<MedicalRepresentative> common_dao_medicalrepresentative = new MedicalRepresentative_dao_impl();
		Meeting_dao_impl meeting_dao_impl = new Meeting_dao_impl();
		RequestDispatcher rd = null;
		Analysis_dao_impl analysis_dao_impl = new Analysis_dao_impl();

		if (action != null && (action.equals("profile") || action.equals("Edit profile"))) {

			MedicalRepresentative medicalrepresentative = (MedicalRepresentative) session.getAttribute("user");
			// Long id = Long.parseLong(request.getParameter("userid"));
			System.out.println("getting the data");
			// MedicalRepresentative medicalrepresentative =
			// common_dao_medicalrepresentative.get(id);

			medicalrepresentative.toString();
			request.setAttribute("user", medicalrepresentative);
			if (action.equals("profile")) {

				RequestDispatcher requestDispatcher = request.getRequestDispatcher("Profile(MR).jsp");
				requestDispatcher.forward(request, response);
			}

		} else if (action.equals("meeting")) {
			System.out.println("in  servlet for show meeting");
			List<Meeting> ms = meeting_dao_impl.find_all();
			request.setAttribute("users", ms);
			System.out.println(ms);
			rd = request.getRequestDispatcher("Meeting(MR).jsp");
			rd.forward(request, response);
			System.out.println("khtmmmmmmmmm meetinggggg");
		} else if (action.equals("analysis")) {
			System.out.println("in servlet for show analysis");
			List<Analysis> an = analysis_dao_impl.find_all();
			request.setAttribute("users", an);
			System.out.println(an);
			rd = request.getRequestDispatcher("Analysis(MR).jsp");
			rd.forward(request, response);
			System.out.println("khtmmmmmmmmm analysis");
		} else if (action.equals("viewFile")) {
			long id = Integer.parseInt(request.getParameter("id"));
			// Cust cust = custService.getById(id);

			Analysis anl = analysis_dao_impl.get(id);
			String fullDocPath = anl.getAna_desc();
			String fullPdfPath = anl.getAna_desc();

			try {
				if ((new File(fullDocPath)).exists()) {
					System.out.println("aaaaaaaaaaaaaaaaaaaaaaa file" + fullDocPath);
					Process p = Runtime.getRuntime().exec("rundll32 url.dll,FileProtocolHandler " + fullDocPath);
					p.waitFor();
				} else if ((new File(fullPdfPath)).exists()) {
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
			List<Analysis> an = analysis_dao_impl.find_all();
			request.setAttribute("users", an);
			System.out.println(an);
			rd = request.getRequestDispatcher("Analysis(MR).jsp");
			rd.forward(request, response);
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
		// -------------get doctor for meeting-----
		else if (action.equals("GetDoctorForMeeting")) {
			System.out.println("in the GetDoctorFormeeting condition");

			long id = Long.parseLong(request.getParameter("id"));

			Doctor doctor = doctor_dao_impl.get(id);
			System.out.println("doctor: " + doctor.toString());

			request.setAttribute("doctor", doctor);
			RequestDispatcher dispatcher = request.getRequestDispatcher("book_doctor-appoint_meeting.jsp");
			dispatcher.forward(request, response);

		}
		// -------------------------request for meeting
		else if (action.equals("RequestForMeeting")) {
			System.out.println("RequestForMeeting condition");

			Doctor doctor = doctor_dao_impl.get(Long.parseLong(request.getParameter("id")));

			MedicalRepresentative mr = (MedicalRepresentative) session.getAttribute("user");
			Meeting meeting = new Meeting();
			meeting.setDoctor(doctor);
			meeting.setMr(mr);

			meeting.setStatus("pending");

			long date_mili = System.currentTimeMillis();
			java.sql.Date date = new java.sql.Date(date_mili);
			meeting.setBooking_date(date);

			System.out.println(meeting.toString());

			meeting_dao_impl.insert(meeting);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("MR_home.jsp");
			requestDispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("MR servlet : dopost");
		String action = request.getParameter("action");
		System.out.println("Action=" + action);

		HttpSession session = request.getSession();

		Common_dao_impl<MedicalRepresentative> common_dao_medicalrepresentative = new MedicalRepresentative_dao_impl();
		Doctor_dao_impl doctor_dao_impl = new Doctor_dao_impl();

		if (action != null && (action.equals("registration") || action.equals("Update"))) {
			Address add = new Address();

			add.setType("personal");
			add.setAdd_detail(request.getParameter("p_add_detail"));
			add.setLandmark(request.getParameter("p_landmark"));
			add.setArea(request.getParameter("p_add_area"));
			add.setCity(request.getParameter("p_city"));
			add.setPincode(Integer.parseInt(request.getParameter("p_pincode")));
			System.out.println(add.toString());

			MedicalRepresentative medicalrepresentative = new MedicalRepresentative();

			medicalrepresentative.setmr_name(request.getParameter("name"));
			medicalrepresentative.setLog_email(request.getParameter("email"));
			medicalrepresentative.setLog_password(request.getParameter("password"));
			medicalrepresentative.setmr_gender(request.getParameter("gender"));
			medicalrepresentative.setmr_mobile(Long.parseLong(request.getParameter("mobile")));
			String dob = request.getParameter("dob");
			System.out.println("Dob : " + dob);
			medicalrepresentative.setmr_dob(Date.valueOf(dob));

			medicalrepresentative.setWorkArea(request.getParameter("workarea"));
			medicalrepresentative.setAddress(add);

			System.out.println(medicalrepresentative.toString());
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
				MedicalRepresentative_dao_impl medicalRepresentative_dao_impl = new MedicalRepresentative_dao_impl();
				System.out.println("SENDOTP:" + sendotp + "   USEROTP:" + userotp);
				boolean value = medicalRepresentative_dao_impl
						.checkUserAvailability(medicalrepresentative.getLog_email());

				System.out.println("boolean value =" + value);

				if (value == true) {
					if (sendotp == userotp) {
						long date_mili = System.currentTimeMillis();
						medicalrepresentative.setCreate_date(new Date(date_mili));

						System.out.println("inserting MedicalRepresentative");

						common_dao_medicalrepresentative.insert(medicalrepresentative);

						session.setAttribute("category", "medicalrepresentative");
						session.setAttribute("user", medicalrepresentative);

						request.setAttribute("action", "registered");
						request.setAttribute("msg",
								"Kindly mail your qualification Certificate at this email id :euphoria.abgp@gmail.com less you won't be consider as certificated doctor and you will be not consider for booking appointments");
						RequestDispatcher requestDispatcher = request.getRequestDispatcher("MR_home.jsp");
						requestDispatcher.forward(request, response);
					} else {
						RequestDispatcher requestDispatcher = request.getRequestDispatcher("registration(mr).jsp");
						requestDispatcher.forward(request, response);
					}

				} else {

					System.out.println("email exits required new email");
					response.sendRedirect("registration(mr).jsp?message=choose_new_email");

				}

			}

			else if (action.equals("Update")) {

				medicalrepresentative.setmr_id(Long.parseLong(request.getParameter("id")));

				MedicalRepresentative patient2 = (MedicalRepresentative) session.getAttribute("user");
				medicalrepresentative.setLog_password(patient2.getLog_password());

				long date = System.currentTimeMillis();
				medicalrepresentative.setUpdate_date(new Date(date));

				System.out.println(medicalrepresentative.toString());

				System.out.println("updating medicalrepresentative");
				common_dao_medicalrepresentative.update(medicalrepresentative);
				session.setAttribute("user", medicalrepresentative);
				request.setAttribute("user", medicalrepresentative);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("Profile(MR).jsp");
				requestDispatcher.forward(request, response);

			}
		} else if (action.equals("Edit profile")) {
			// Long id = Long.parseLong(request.getParameter("id"));

			System.out.println("getting the data");
			MedicalRepresentative medicalrepresentative = (MedicalRepresentative) session.getAttribute("user");

			medicalrepresentative.toString();
			request.setAttribute("user", medicalrepresentative); // setting the object of medicalrepresentative
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("Edit(MR).jsp");
			requestDispatcher.forward(request, response);
		}
		// ------------------------------search doctor for meeting
		else if (action.equals("search_doctor")) {
			System.out.println("Search Doctor condition fullfill");

			String area = request.getParameter("source");
			System.out.println("Area : " + area);
			List<Doctor> doctors = doctor_dao_impl.getDoctorbyArea(area);
			List<String> list_area = new Address_dao_impl().getArea();

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
		if (action != null && (action.equals("ChangePassword"))) {

			MedicalRepresentative medicalRepresentative = (MedicalRepresentative) session.getAttribute("user");

			System.out.println(medicalRepresentative.toString());
			String old_password = medicalRepresentative.getLog_password();
			System.out.println("Old Password:" + old_password);
			System.out.println("updating mr password");

			String user_password = request.getParameter("old_password");
			String new_password = request.getParameter("new_password");
			String conform_password = request.getParameter("conform_password");
			System.out.println("user password:" + user_password);
			System.out.println("new_password:" + new_password);
			System.out.println("conform_password:" + conform_password);
			if (old_password.equals(user_password)) {
				System.out.println("In If Condition");
				medicalRepresentative.setLog_password(new_password);

				common_dao_medicalrepresentative.update(medicalRepresentative);
				session.setAttribute("user", medicalRepresentative);
				request.setAttribute("user", medicalRepresentative);

				RequestDispatcher requestDispatcher = request.getRequestDispatcher("Mr_home.jsp");
				requestDispatcher.forward(request, response);
			} else {
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("pages-change-password.jsp");
				requestDispatcher.forward(request, response);
			}
		}
	}

}
