package com.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Admin_dao;
import com.dao.Admin_dao_impl;
import com.dao.Common_dao_impl;
import com.dao.Doctor_dao;
import com.dao.Doctor_dao_impl;
import com.dao.EmergencyServices_dao;
import com.dao.EmergencyServices_dao_impl;
import com.dao.Feedback_dao;
import com.dao.Feedback_dao_impl;
import com.dao.MedicalRepresentative_dao;
import com.dao.MedicalRepresentative_dao_impl;
import com.dao.Patient_dao;
import com.dao.Patient_dao_impl;
import com.dao.Pharmacist_dao;
import com.dao.Pharmacist_dao_impl;
import com.model.Admin;
import com.model.Doctor;
import com.model.EmergencyServices;
import com.model.Feedback;
import com.model.MedicalRepresentative;
import com.model.Patient;
import com.model.Pharmacist;
import com.utility.EmailSendingUtility;
import com.utility.GenerateOTP;

/**
 * Servlet implementation class CommonServlet
 */
@WebServlet("/CommonServlet")
public class CommonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CommonServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("commonservlet : do get");
		String action = request.getParameter("action");
		System.out.println("action = " + action);

		HttpSession session = request.getSession();

		EmailSendingUtility emailSendingUtility=new EmailSendingUtility();
		// ---------------------------------action emergency services---------------

		if (action.equals("emergencyservices")) {

			System.out.println("in the es if condition");
			List<EmergencyServices> emergencyServices = new ArrayList<EmergencyServices>();

			Common_dao_impl<EmergencyServices> dao_impl = new EmergencyServices_dao_impl();

			emergencyServices = dao_impl.find_all();

			for (EmergencyServices emergencyServices2 : emergencyServices) {

				System.out.println(emergencyServices2.toString());
			}

			request.setAttribute("es", emergencyServices);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("all(es).jsp");
			requestDispatcher.forward(request, response);
		}

		else if (action.equals("es_display")) {
			EmergencyServices_dao es_dao_impl = new EmergencyServices_dao_impl();
			List<EmergencyServices> es = es_dao_impl.find_all();
			request.setAttribute("es", es);
			RequestDispatcher rd1 = request.getRequestDispatcher("all(es).jsp");
			rd1.forward(request, response);
		}

		// -----------------------------action logout
		else if (action.equals("logout")) {
			session.invalidate();
			System.out.println("session expired");
			response.sendRedirect("welcome-page.jsp");
		} else if (action.equals("emailFeedback")) {

			System.out.println("in condition of send email feedback");
			Patient patient=(Patient) session.getAttribute("user");
			String message="hello feedback mail is send";
			emailSendingUtility.sendFeedbackMail(patient.getLog_email(), message);
			
			response.sendRedirect("Patient_home.jsp");
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("commonservlet : do post");
		String action = request.getParameter("action");
		System.out.println("action = " + action);

		HttpSession session = request.getSession();
		// --------------------RESET PASSWORD ------------------

		if (action.equals("Reset Password")) {

			String category = request.getParameter("category");
			System.out.println("category =" + category);
			String email = request.getParameter("email");
			System.out.println(email);
			String password = request.getParameter("psswrd");
			StringBuilder messageText = null;

			if (category.equals("doctor")) {
				Doctor_dao doctorDao = new Doctor_dao_impl();
				Doctor doctor = doctorDao.getDoctorbyEmail(email);
				if (doctor == null) {
					response.sendRedirect(
							"Forgot_Password.jsp?category=" + category + "&message=INVALID E-MAIL ADDRESS");

				} else {
					String alphaNumStr = GenerateOTP.getRandomAlphaNumericPassword();

					doctor.setLog_password(alphaNumStr);
					doctorDao.update(doctor);
					messageText = new StringBuilder();
					messageText.append("Password : ").append(alphaNumStr);
					EmailSendingUtility.sendEmail(email, "Reset Password", messageText.toString());
					response.sendRedirect("pages-login.jsp?category=doctor");
				}
			} else if (category.equals("mr")) {
				MedicalRepresentative_dao medicalRepresentativeDao = new MedicalRepresentative_dao_impl();
				MedicalRepresentative medicalRepresentative = medicalRepresentativeDao
						.getMedicalRepresentativebyEmail(email);
				if (medicalRepresentative == null) {
					response.sendRedirect(
							"Forgot_Password.jsp?category=" + category + "&message=INVALID E-MAIL ADDRESS");

				} else {
					String alphaNumStr = GenerateOTP.getRandomAlphaNumericPassword();

					medicalRepresentative.setLog_password(alphaNumStr);
					medicalRepresentativeDao.update(medicalRepresentative);
					messageText = new StringBuilder();
					messageText.append("Password : ").append(alphaNumStr);
					EmailSendingUtility.sendEmail(email, "Reset Password", messageText.toString());
					response.sendRedirect("pages-login.jsp?category=mr");
				}
			} else if (category.equals("patient")) {
				Patient_dao patientDao = new Patient_dao_impl();
				Patient patient = patientDao.getPatientbyEmail(email);
				if (patient == null) {
					response.sendRedirect(
							"page-forgot-password.jsp?category=" + category + "&message=INVALID E-MAIL ADDRESS");

				} else {
					patient.toString();
					String alphaNumStr = GenerateOTP.getRandomAlphaNumericPassword();

					patient.setLog_password(alphaNumStr);
					patientDao.update(patient);
					messageText = new StringBuilder();
					messageText.append("Password : ").append(alphaNumStr);
					EmailSendingUtility.sendEmail(email, "Reset Password", messageText.toString());
					response.sendRedirect("pages-login.jsp?category=patient");
				}
			} else if (category.equals("pharmacist")) {
				Pharmacist_dao pharmacistDao = new Pharmacist_dao_impl();
				Pharmacist pharmacist = pharmacistDao.getPharmacistbyEmail(email);
				if (pharmacist == null) {
					response.sendRedirect(
							"Forgot_Password.jsp?category=" + category + "&message=INVALID E-MAIL ADDRESS");

				} else {
					String alphaNumStr = GenerateOTP.getRandomAlphaNumericPassword();

					pharmacist.setLog_password(alphaNumStr);
					pharmacistDao.update(pharmacist);
					messageText = new StringBuilder();
					messageText.append("Password : ").append(alphaNumStr);
					EmailSendingUtility.sendEmail(email, "Reset Password", messageText.toString());
					response.sendRedirect("pages-login.jsp?category=pharmacist");
				}
			}
		}

		// ---------------------------action login users
		if (action.equals("Login")) {

			String category = request.getParameter("category");
			System.out.println("Category : " + category);
			String email = request.getParameter("email");
			String password = request.getParameter("psswrd");

			if (category.equals("mr")) {

				MedicalRepresentative_dao mrd = new MedicalRepresentative_dao_impl();
				MedicalRepresentative mr = mrd.authenticateMedicalRepresentative(email, password);

				//System.out.println(mr.toString());

				if (mr != null && mr.getIfd() == 0) {

					session.setAttribute("category", "mr");
					session.setAttribute("user", mr);

					System.out.println("Mr Login Success");

					request.setAttribute("action", "loggedin");
					RequestDispatcher rd = request.getRequestDispatcher("MR_home.jsp");
					rd.forward(request, response);
				} else {
					System.out.println("Mr Login Fail");
					response.sendRedirect(
							"pages-login.jsp?category=mr&&msg=login fail : incorrect email id or password");
				}
			}

			if (category.equals("patient")) {
				Patient_dao pd = new Patient_dao_impl();
				Patient patient = pd.authenticatePatient(email, password);
				if (patient != null && patient.getIfd() == 0) {

					session.setAttribute("category", "patient");
					session.setAttribute("user", patient);

					System.out.println("Patient Login Success");
					request.setAttribute("action", "loggedin");
					RequestDispatcher rd = request.getRequestDispatcher("Patient_home.jsp");
					rd.forward(request, response);
				} else {
					System.out.println("Patient Login Fail");
					response.sendRedirect(
							"pages-login.jsp?category=patient&&msg=login fail : incorrect email id or password");
				}
			}
			if (category.equals("doctor")) {

				Doctor_dao dd = new Doctor_dao_impl();
				Doctor doctor = dd.authenticateDoctor(email, password);

				// System.out.println(doctor.toString());
				// System.out.println(doctor.toString());

				if (doctor != null) {

					System.out.println(doctor.toString());
					session.setAttribute("category", "doctor");
					session.setAttribute("user", doctor);

					System.out.println("Doctor Login Success");

					if (doctor.getIfd() == 1) {
						request.setAttribute("msg", "Hello, Dr." + doctor.getDr_name()
								+ ", You are successfully reqistered as doctor but to get certified by admin you need to send your qualification certificate and license to our email: euphoria.abgp@gmail.com and you won't be able to get appointments through Euphoria unless you are certified by admin");
					}
					request.setAttribute("action", "loggedin");
					RequestDispatcher rd = request.getRequestDispatcher("Doctor_home.jsp");
					rd.forward(request, response);
					// response.sendRedirect("Home.jsp");

				} else {
					System.out.println("Doctor Login Fail");
					response.sendRedirect(
							"pages-login.jsp?category=doctor&&msg=login fail : incorrect email id or password");
				}
			}
			if (category.equals("pharmacist")) {

				Pharmacist_dao phstd = new Pharmacist_dao_impl();
				Pharmacist pharmacist = phstd.authenticatePharmacist(email, password);

				if (pharmacist != null && pharmacist.getIfd() == 0) {

					session.setAttribute("category", "pharmacist");
					session.setAttribute("user", pharmacist);

					System.out.println("Pharmacist Login Success");
					request.setAttribute("action", "loggedin");
					RequestDispatcher rd = request.getRequestDispatcher("Header(pharmacist).jsp");
					rd.forward(request, response);
				} else {
					System.out.println("Pharmacist Login Fail");
					response.sendRedirect(
							"pages-login.jsp?category=pharmasist&&msg=login fail : incorrect email id or password");
				}
			} else if (category.equals("admin")) {

				Admin_dao adminDao = new Admin_dao_impl();
				System.out.println("Admin email:" + email + ",Password:" + password);
				Admin admin = adminDao.authenticateAdmin(email, password);

				if (admin != null) {

					session.setAttribute("category", "admin");
					session.setAttribute("user", admin);

					System.out.println("Admin Login Success");
					request.setAttribute("action", "loggedin");
					RequestDispatcher rd = request.getRequestDispatcher("Home(admin).jsp");
					rd.forward(request, response);
				} else {
					System.out.println("Admin Login Fail");
					response.sendRedirect(
							"pages-login.jsp?category=admin&&msg=login fail : incorrect email id or password");
				}
			}
		}
		if (action.equals("submitfeedback")) {
			System.out.println("action " + action);
			Feedback fb = new Feedback();
			fb.setF_email(request.getParameter("f_email"));
			fb.setF_desc(request.getParameter("f_desc"));
			long f_date = System.currentTimeMillis();
			fb.setF_date(new Date(f_date));
			System.out.println(fb.toString());

			Feedback_dao dao_impl = new Feedback_dao_impl();

			dao_impl.insert(fb);
			System.out.println("fb inserted");
			request.setAttribute("fb", fb);
			RequestDispatcher dispatcher = request.getRequestDispatcher("Feedback.jsp");
			dispatcher.forward(request, response);
		}
	}
}
