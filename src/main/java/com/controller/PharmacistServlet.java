package com.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Common_dao_impl;
import com.dao.OTP_dao_impl;
import com.dao.Patient_dao_impl;
import com.dao.Payment_dao_impl;
import com.dao.Pharmacist_dao;
import com.dao.Pharmacist_dao_impl;
import com.dao.Pharmacy_dao_impl;
import com.dao.Prescription_dao_impl;
import com.model.Address;
import com.model.OTP;
import com.model.Patient;
import com.model.Payment;
import com.model.Pharmacist;
import com.model.Pharmacy;
import com.model.Prescription;
import com.utility.EmailSendingUtility;

/**
 * Servlet implementation class PharmacistServlet
 */
@WebServlet("/PharmacistServlet")
public class PharmacistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PharmacistServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		System.out.println("pharmacist servlet : doget");
		String action = request.getParameter("action");
		System.out.println("Action=" + action);

		HttpSession session = request.getSession();

		Common_dao_impl<Pharmacist> common_dao_pharmacist = new Pharmacist_dao_impl();
		Pharmacist pharmacist = (Pharmacist) session.getAttribute("user");

		Prescription_dao_impl pre_dao_impl = new Prescription_dao_impl();
		if (action != null && (action.equals("profile"))) {

			// Long id = Long.parseLong(request.getParameter("userid"));

			System.out.println("getting the data");
			// Pharmacist pharmacist = common_dao_pharmacist.get(id);

			pharmacist.toString();
			request.setAttribute("user", pharmacist);

			RequestDispatcher requestDispatcher = request.getRequestDispatcher("Profile(pharmacist).jsp");
			requestDispatcher.forward(request, response);
		}
		// ----------------list of precription---------
		else if (action.equals("prescription")) {
			System.out.println("In Pharmacist Controller");

			/*long id=pharmacist.getPhst_id();
			System.out.println("id:"+id);*/
			List<Prescription> prescriptions = pre_dao_impl.get_Prescription();

			request.setAttribute("prescriptions", prescriptions);
			System.out.println("after set list of prescription");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("ViewPrescription.jsp");
			requestDispatcher.forward(request, response);

		}
		else if (action.equals("accepted_prescription")) {
			System.out.println("In Pharmacist Controller");

			long id=pharmacist.getPhst_id();
			System.out.println("id:"+id);
			List<Prescription> prescriptions = pre_dao_impl.get_accepted_Prescription(id);

			request.setAttribute("prescriptions", prescriptions);
			System.out.println("after set list of prescription");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("Accepted_prescription.jsp");
			requestDispatcher.forward(request, response);

		}
		// -----------------accpet & deny prescription-----
		else if (action.equals("denny") || action.equals("accept")) {
			if (action.equals("accept")) {
				Prescription pre = new Prescription();
				Patient patient = new Patient();
				Prescription_dao_impl dao_impl = new Prescription_dao_impl();
				Payment_dao_impl payment_dao_impl = new Payment_dao_impl();
				Payment payment = new Payment();

				Address add = new Address();

				long pr_id = Long.parseLong(request.getParameter("pr_id"));
				System.out.println("prescription id:" + pr_id);
				pre = pre_dao_impl.get(pr_id);

				pharmacist = (Pharmacist) session.getAttribute("user");

				System.out.println(pharmacist.toString());
				pre.setPharmacist(pharmacist);
				Prescription prescription = dao_impl.get(pr_id);
				pre.setIfd((byte) 1);
				System.out.println(pre.toString());
				System.out.println("after accept");
				pre_dao_impl.update(pre);

				float amount = Float.parseFloat(request.getParameter("amount"));
				System.out.println("Amount:" + amount);
				payment.setAmount(amount);
				payment.setCreated_date(new java.util.Date());
				payment.setPharmacist(pharmacist);
				payment.setPrescription(prescription);
				System.out.println(payment.toString());
				payment_dao_impl.insert(payment);

				Pharmacy_dao_impl pharmacy_dao_impl = new Pharmacy_dao_impl();
				Pharmacy pharmacy = pharmacy_dao_impl.getpharmacy(pharmacist.getPhst_id());
				System.out.println(pharmacy.toString());
				long patient_id = Long.parseLong(request.getParameter("patient_id"));
				System.out.println("patient id:" + patient_id);

				System.out.println("After set patient id");

				Patient_dao_impl patient_dao_impl = new Patient_dao_impl();
				patient = (Patient) patient_dao_impl.get(patient_id);
				System.out.println(patient.toString());

				String email = patient.getLog_email();
				String name = patient.getPatient_name();
				System.out.println("patient Email:" + email);
				System.out.println("Patient Name:" + name);
				String path = pre.getPr_path();
				System.out.println("Path :" + path);

				/*
				 * String phst_name=pharmacist.getPhst_name();
				 * System.out.println("Pharmasict name:"+phst_name);
				 */

				String phcy_name = pharmacy.getPhcy_name();
				long phcy_no = pharmacy.getPhcy_mobile();
				Address address = pharmacy.getAddress();
				String phcy_add = address.getAdd_detail() + ",\n near " + address.getLandmark() + ", "
						+ address.getArea() + " \n " + address.getCity() + "-" + address.getPincode();
				System.out.println("address = " + address);

				long phst_no = pharmacist.getPhst_mobile();
				System.out.println("Pharmacist No:" + phst_no);

				/*
				 * String phcy_add=add.getAdd_detail();
				 * System.out.println("Pharmacy address:"+phcy_add);
				 */

				EmailSendingUtility emailSendingUtility = new EmailSendingUtility();
				String msg = "Your Prescription is confirmed by pharmacy :" + phcy_name + "\n their Contact No is "
						+ phcy_no + "\n and their Address is \n" + phcy_add + "\n You have to pay Amount :" + amount
						+ "\n at the time of delivery \n you will receive your order in 2-3 days\n\n **if u will not recive your in specified days then contact on pharmacy number \n\n Your Prescription:";
				emailSendingUtility.sendPrescriptionorQR(email, msg, path);
				// emailSendingUtility.sendPrescription(email, name, amount, path, phcy_name,
				// phcy_no, phcy_add);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("Header(pharmacist).jsp");
				requestDispatcher.forward(request, response);

			} else {
				RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("PharmacistServlet?action=prescription");
				requestDispatcher.forward(request, response);
			}
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		System.out.println("pharmacist servlet : dopost");
		String action = request.getParameter("action");
		System.out.println("Action=" + action);

		HttpSession session = request.getSession();

		Pharmacist_dao pharmacist_dao = new Pharmacist_dao_impl();

		if (action.equals("registration") || action.equals("Update")) {
			System.out.println("in if condition");
			Address personal_add = new Address();
			personal_add.setType("personal");
			personal_add.setAdd_detail(request.getParameter("p_add_detail"));
			personal_add.setLandmark(request.getParameter("p_add_area"));
			personal_add.setArea(request.getParameter("p_landmark"));
			personal_add.setCity(request.getParameter("p_city"));
			personal_add.setPincode(Integer.parseInt(request.getParameter("p_pincode")));
			System.out.println(personal_add.toString());

			Pharmacist pharmacist = new Pharmacist();

			pharmacist.setPhst_name(request.getParameter("name"));
			pharmacist.setLog_email(request.getParameter("email"));
			pharmacist.setLog_password(request.getParameter("password"));
			pharmacist.setPhst_gender(request.getParameter("gender"));
			pharmacist.setPhst_mobile(Long.parseLong(request.getParameter("mobile")));
			String dob = request.getParameter("dob");
			System.out.println("Dob : " + dob);
			pharmacist.setPhst_dob(Date.valueOf(dob));
			/*
			 * try { pharmacist.setPhst_dob(new SimpleDateFormat("dd-MM-yyyy").parse(dob));
			 * } catch (ParseException e1) { e1.printStackTrace(); }
			 */
			pharmacist.setAddress(personal_add);

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

				Pharmacist_dao_impl pharmacist_dao_impl = new Pharmacist_dao_impl();

				boolean value = pharmacist_dao_impl.checkUserAvailability(pharmacist.getLog_email());
				System.out.println("value = " + value);
				if (value == true) {
					if (sendotp == userotp) {
						// ---------------inserting data (registration)
						long date_mili = System.currentTimeMillis();
						pharmacist.setCreate_date(new Date(date_mili));

						System.out.println(pharmacist.toString());
						System.out.println("inserting pharmacist");
						pharmacist_dao.insert(pharmacist);

						/*
						 * long userid = pharmacist.getPhst_id(); request.setAttribute("userid",
						 * userid); request.setAttribute("user", "pharmacist");
						 */
						session.setAttribute("category", "pharmacist");
						session.setAttribute("user", pharmacist);
						request.setAttribute("action", "registered");
						RequestDispatcher requestDispatcher = request.getRequestDispatcher("Header(pharmacist).jsp");
						requestDispatcher.forward(request, response);
					} else {
						RequestDispatcher requestDispatcher = request
								.getRequestDispatcher("registration(pharmacist).jsp");
						requestDispatcher.forward(request, response);
					}
				} else {

					System.out.println("email exits required new email");
					response.sendRedirect("registration(pharmacist).jsp?message=choose_new_email");

				}
			} else if (action.equals("Update")) {
				// ---------------updating data (registration)
				pharmacist.setPhst_id(Long.parseLong(request.getParameter("id")));
	
				Pharmacist patient2=(Pharmacist) session.getAttribute("user");
				pharmacist.setLog_password(patient2.getLog_password());
				
				long date = System.currentTimeMillis();

				pharmacist.setUpdate_date(new Date(date));

				System.out.println(pharmacist.toString());
				System.out.println("updating pharmacist");
				pharmacist_dao.update(pharmacist);
				session.setAttribute("user", pharmacist);
				request.setAttribute("user", pharmacist);

				RequestDispatcher requestDispatcher = request.getRequestDispatcher("Profile(pharmacist).jsp");
				requestDispatcher.forward(request, response);

			}
		} else if (action.equals("Edit profile")) {
			// Long id = Long.parseLong(request.getParameter("id"));

			System.out.println("getting the data");
			Pharmacist pharmacist = (Pharmacist) session.getAttribute("user");

			pharmacist.toString();
			request.setAttribute("user", pharmacist);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("Edit(pharmacist).jsp");
			requestDispatcher.forward(request, response);

		}
		// ------------------change password--------------------------
		if (action != null && (action.equals("ChangePassword"))) {

			Pharmacist pharmacist = (Pharmacist) session.getAttribute("user");

			System.out.println(pharmacist.toString());
			String old_password = pharmacist.getLog_password();
			System.out.println("Old Password:" + old_password);
			System.out.println("updating pharmasict password");

			String user_password = request.getParameter("old_password");
			String new_password = request.getParameter("new_password");
			String conform_password = request.getParameter("conform_password");
			System.out.println("user password:" + user_password);
			System.out.println("new_password:" + new_password);
			System.out.println("conform_password:" + conform_password);
			if (old_password.equals(user_password)) {
				System.out.println("In If Condition");
				pharmacist.setLog_password(new_password);

				pharmacist_dao.update(pharmacist);
				session.setAttribute("user", pharmacist);
				request.setAttribute("user", pharmacist);

				RequestDispatcher requestDispatcher = request.getRequestDispatcher("Home(pharmacist).jsp");
				requestDispatcher.forward(request, response);
			} else {
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("pages-change-password.jsp");
				requestDispatcher.forward(request, response);
			}
		}
		// ----------------------payment
		else if (action.equals("Submit bill")) {

			Prescription_dao_impl dao_impl = new Prescription_dao_impl();
			Payment_dao_impl payment_dao_impl = new Payment_dao_impl();

			Pharmacist pharmacist = (Pharmacist) session.getAttribute("user");
			Payment payment = new Payment();

			Long pre_id = Long.parseLong(request.getParameter("pr_id"));
			Float amt = Float.parseFloat(request.getParameter("amount"));

			Prescription prescription = dao_impl.get(pre_id);

			payment.setAmount(amt);
			payment.setCreated_date(new java.util.Date());
			payment.setPharmacist(pharmacist);
			payment.setPrescription(prescription);
			System.out.println(payment.toString());
			payment_dao_impl.insert(payment);

			response.sendRedirect("PharmacistServlet?action=prescription");
		}

	}
}
