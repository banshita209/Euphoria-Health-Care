package com.controller;

import java.io.File;
import java.io.IOException;
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
import com.dao.Analysis_dao_impl;
import com.dao.Appointment_dao_impl;
import com.dao.Common_dao;
import com.dao.Doctor_dao;
import com.dao.Doctor_dao_impl;
import com.dao.EmergencyServices_dao;
import com.dao.EmergencyServices_dao_impl;
import com.dao.Feedback_dao_impl;
import com.dao.MedicalRepresentative_dao;
import com.dao.MedicalRepresentative_dao_impl;
import com.dao.Meeting_dao_impl;
import com.dao.Patient_dao;
import com.dao.Patient_dao_impl;
import com.dao.Payment_dao_impl;
import com.dao.Pharmacist_dao;
import com.dao.Pharmacist_dao_impl;
import com.model.Admin;
import com.model.Analysis;
import com.model.Appointment;
import com.model.Doctor;
import com.model.EmergencyServices;
import com.model.Feedback;
import com.model.MedicalRepresentative;
import com.model.Meeting;
import com.model.Patient;
import com.model.Payment;
import com.model.Pharmacist;

/**
 * Servlet implementation class AdminServlet
 */
@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("admin servlet : doget");
		String action = request.getParameter("action");
		System.out.println("Action=" + action);
		RequestDispatcher rd = null;
		HttpSession session = request.getSession();
		MedicalRepresentative_dao mr_dao_impl = new MedicalRepresentative_dao_impl();
		Doctor_dao doctor_dao_impl = new Doctor_dao_impl();
		Patient_dao patient_dao_impl = new Patient_dao_impl();
		Pharmacist_dao pharmacist_dao_impl = new Pharmacist_dao_impl();
		Feedback_dao_impl feedback_dao_impl = new Feedback_dao_impl();
		EmergencyServices_dao_impl emergencyservice_dao_impl = new EmergencyServices_dao_impl();
		Admin_dao common_dao_admin = new Admin_dao_impl();
		Payment_dao_impl payment_dao_impl = new Payment_dao_impl();
		Appointment_dao_impl appointment_dao_impl=new Appointment_dao_impl();
		Meeting_dao_impl meeting_dao_impl=new Meeting_dao_impl();
		Analysis_dao_impl analysis_dao_impl=new Analysis_dao_impl();
		
		if (action != null && (action.equals("profile") || action.equals("Edit profile"))) {

			Admin admin = (Admin) session.getAttribute("user");
			System.out.println("getting the data");
			System.out.println("ttd");
			System.out.println(admin.toString());
			System.out.println("aaaaaaaaaaaaaaaaaaaaaaa");
			request.setAttribute("user", admin);
			if (action.equals("profile")) {

				RequestDispatcher requestDispatcher = request.getRequestDispatcher("Profile(admin).jsp");
				requestDispatcher.forward(request, response);
			}
		
		} else if (action.equals("Edit Emergencyservice")) {

			System.out.println("strt");
			EmergencyServices_dao es_dao_impl = new EmergencyServices_dao_impl();
			long id = Long.parseLong(request.getParameter("id"));
			EmergencyServices es = es_dao_impl.get(id);

			request.setAttribute("es", es);
			RequestDispatcher rd1 = request.getRequestDispatcher("Edit(es).jsp");
			rd1.forward(request, response);
		}
		else if(action.equals("payment")) {
			System.out.println("in admin servlet for show payment");
			List<Payment> ps = payment_dao_impl.find_all();
			request.setAttribute("users", ps);
			System.out.println(ps);
			rd=request.getRequestDispatcher("Payment.jsp");
			rd.forward(request, response);
			System.out.println("khtmmmmmmmmm");
		}
		
		else if(action.equals("appointment")) {
			System.out.println("in admin servlet for show appointment");
			List<Appointment> as = appointment_dao_impl.find_all();
			request.setAttribute("users", as);
			System.out.println(as);
			rd=request.getRequestDispatcher("appointment.jsp");
			rd.forward(request, response);
			System.out.println("khtmmmmmmmmm appointment");
		}
		
		else if(action.equals("meeting")) {
			System.out.println("in admin servlet for show meeting");
			List<Meeting> ms = meeting_dao_impl.find_all();
			request.setAttribute("users", ms);
			System.out.println(ms);
			rd=request.getRequestDispatcher("meeting.jsp");
			rd.forward(request, response);
			System.out.println("khtmmmmmmmmm meetinggggg");
		}
		
		else if(action.equals("analysis")) {
			System.out.println("in admin servlet for show analysis");
			List<Analysis> an = analysis_dao_impl.find_all();
			request.setAttribute("users", an);
			System.out.println(an);
			rd=request.getRequestDispatcher("Analysis.jsp");
			rd.forward(request, response);
			System.out.println("khtmmmmmmmmm analysis");
		}
		
		else if (action.equals("viewFile")) {
			long id = Integer.parseInt(request.getParameter("id"));
			//Cust cust = custService.getById(id);
			

			Analysis anl=analysis_dao_impl.get(id);
			String fullDocPath = anl.getAna_desc();
			String fullPdfPath = anl.getAna_desc();
			
			

			try {
				if ((new File(fullDocPath)).exists()) {
					System.out.println("aaaaaaaaaaaaaaaaaaaaaaa file"+ fullDocPath);
					Process p = Runtime.getRuntime().exec("rundll32 url.dll,FileProtocolHandler " + fullDocPath);
					p.waitFor();
				} else if ((new File(fullPdfPath)).exists()) {
					System.out.println("aaaaaaaaaaaaaaaaaaaaaaa file"+ fullPdfPath);
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
			rd=request.getRequestDispatcher("Analysis.jsp");
			rd.forward(request, response);
		}

		else if (action.equals("feedback") || action.equals("fbdelete")) {
			if (action.equals("feedback")) {
				System.out.println("In Admin Servlet action feedback");

				List<Feedback> fbs = feedback_dao_impl.find_all();
				System.out.println("after List");
				request.setAttribute("users", fbs);
				System.out.println(fbs);
				rd = request.getRequestDispatcher("all(fb).jsp");
				rd.forward(request, response);
			
			} else {
				long id = Long.parseLong(request.getParameter("id"));
					System.out.println("fbdelete");
				feedback_dao_impl.delete(id);
				response.sendRedirect("AdminServlet?action=feedback");
			}
		} else if (action.equals("allmr") || action.equals("mr_delete")) {
			if (action.equals("allmr")) {
				System.out.println("In Admin Servlet action allmr");
				List<MedicalRepresentative> mrs = mr_dao_impl.find_all();
				System.out.println("after List");
				request.setAttribute("users", mrs);
				rd = request.getRequestDispatcher("all(mr).jsp");
				rd.forward(request, response);
			} else {
				System.out.println("for delete in mr");
				long id = Long.parseLong(request.getParameter("id"));
				 MedicalRepresentative medicalRepresentative=mr_dao_impl.get(id);
				 medicalRepresentative.setIfd(Byte.parseByte(request.getParameter("ifd")));
				mr_dao_impl.update(medicalRepresentative);
				
				response.sendRedirect("AdminServlet?action=allmr");
			}

		} else if (action.equals("allpatient") || action.equals("patient_delete")) {
			if (action.equals("allpatient")) {
				System.out.println("In Admin Servlet action allpatient");
				List<Patient> ps = patient_dao_impl.find_all();
				System.out.println("after List");
				request.setAttribute("users", ps);
				rd = request.getRequestDispatcher("all(patient).jsp");
				rd.forward(request, response);
			} else {
				long id = Long.parseLong(request.getParameter("id"));
				System.out.println("patient id" + id);
				Patient patient =patient_dao_impl.get(id);
				patient.setIfd(Byte.parseByte(request.getParameter("ifd")));
				patient_dao_impl.update(patient);
				response.sendRedirect("AdminServlet?action=allpatient");
			}

		} else if (action.equals("alldoctor") || action.equals("doctor_delete")) {
			if (action.equals("alldoctor")) {
				System.out.println("In Admin Servlet action alldoctor");
				List<Doctor> ds = doctor_dao_impl.find_all();
				System.out.println("after List");
				request.setAttribute("users", ds);
				rd = request.getRequestDispatcher("all(doctor).jsp");
				rd.forward(request, response);
			} else {
				long id = Long.parseLong(request.getParameter("id"));
				System.out.println("dr id" + id);
				Doctor doctor = doctor_dao_impl.get(id);
				doctor.setIfd(Byte.parseByte(request.getParameter("ifd")));
				doctor_dao_impl.update(doctor);
				response.sendRedirect("AdminServlet?action=alldoctor");
			}

		} else if (action.equals("allpharmacist") || action.equals("pharmacist_delete")) {
			if (action.equals("allpharmacist")) {
				System.out.println("In Admin Servlet action allpharmacist");
				List<Pharmacist> phs = pharmacist_dao_impl.find_all();
				System.out.println("after List");
				request.setAttribute("users", phs);
				rd = request.getRequestDispatcher("all(pharmacist).jsp");
				rd.forward(request, response);
			} else {
				long id = Long.parseLong(request.getParameter("id"));
				System.out.println("pharmacist id" + id);
				Pharmacist pharmacist = pharmacist_dao_impl.get(id);
				pharmacist.setIfd(Byte.parseByte(request.getParameter("ifd")));
				pharmacist_dao_impl.update(pharmacist);
				response.sendRedirect("AdminServlet?action=allpharmacist");
			}

		} else if (action.equals("es_display")) {
			EmergencyServices_dao es_dao_impl = new EmergencyServices_dao_impl();
			List<EmergencyServices> es = es_dao_impl.find_all();
			request.setAttribute("es", es);
			RequestDispatcher rd1 = request.getRequestDispatcher("EmergencyServices.jsp");
			rd1.forward(request, response);
		} else if (action.equals("Edit_Emergencyservice")) {
			EmergencyServices_dao es_dao_impl = new EmergencyServices_dao_impl();
			System.out.println("strt");
			long id = Long.parseLong(request.getParameter("id"));
			EmergencyServices emergencyServices = es_dao_impl.get(id);
			request.setAttribute("es", emergencyServices);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("Edit(es)2.jsp");
			requestDispatcher.forward(request, response);
		}
		else if(action.equals("delete_Emergencyservice")) {
			long id = Long.parseLong(request.getParameter("id"));

			emergencyservice_dao_impl.delete(id);
			response.sendRedirect("AdminServlet?action=es_display");
			
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("adminservlet : dopost");
		String action = request.getParameter("action");
		HttpSession session = request.getSession();
		Common_dao<Admin> common_dao_impl = new Admin_dao_impl();

		if (action != null && (action.equals("registration") || action.equals("Update"))) {
			Admin admin = new Admin();
			admin.setAd_name(request.getParameter("name"));
			admin.setLog_email(request.getParameter("email"));
			admin.setLog_password(request.getParameter("password"));
			if (action.equals("registration")) {

				common_dao_impl.insert(admin);

				session.setAttribute("user", admin);
				session.setAttribute("category", "admin");

				RequestDispatcher dispatcher = request.getRequestDispatcher("Home(admin).jsp");
				dispatcher.forward(request, response);

			}

			else if (action.equals("Update")) {
				admin.setAd_name(request.getParameter("name"));
				admin.setAd_id(Long.parseLong(request.getParameter("id")));
				admin.setLog_password(request.getParameter("pass"));
				common_dao_impl.update(admin);
				session.setAttribute("user", admin);
				request.setAttribute("user", admin);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("Profile(admin).jsp");
				requestDispatcher.forward(request, response);
			}

		}

		else if (action.equals("Edit profile")) {

			System.out.println("getting the data");
			Admin admin = (Admin) session.getAttribute("user");

			admin.toString();
			request.setAttribute("user", admin);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("Edit(admin).jsp");
			requestDispatcher.forward(request, response);
		}
		if (action != null && (action.equals("ChangePassword"))) {

			Admin admin = (Admin) session.getAttribute("user");

			System.out.println(admin.toString());
			System.out.println("updating Admin password");

			String new_password = request.getParameter("new_password");
			String conform_password = request.getParameter("conform_password");
			System.out.println("new_password:" + new_password);
			System.out.println("conform_password:" + conform_password);
			if (new_password.equals(conform_password)) {
				System.out.println("In If Condition");
				admin.setLog_password(new_password);

				common_dao_impl.update(admin);
				session.setAttribute("user", admin);
				request.setAttribute("user", admin);

				RequestDispatcher requestDispatcher = request.getRequestDispatcher("Profile(doctor).jsp");
				requestDispatcher.forward(request, response);
			} else {
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("ConformPassword.jsp");
				requestDispatcher.forward(request, response);
			}
		} else if (action.equals("Update Emergencyservice")) {

			System.out.println("strt");
			EmergencyServices_dao es_dao_impl = new EmergencyServices_dao_impl();
			EmergencyServices emergencyServices = new EmergencyServices();
			emergencyServices.setEs_id(Long.parseLong(request.getParameter("id")));
			emergencyServices.setEs_name(request.getParameter("es_name"));
			emergencyServices.setEs_mobile(Integer.parseInt(request.getParameter("es_mobile")));
			es_dao_impl.update(emergencyServices);
			response.sendRedirect("AdminServlet?action=es_display");

		}
		 else if (action.equals("Edit_Emergencyservice")) {
				System.out.println("action " + action);
				EmergencyServices ess = new EmergencyServices();
				ess.setEs_name(request.getParameter("es_name"));
				ess.setEs_mobile(Integer.parseInt(request.getParameter("es_mobile")));
				System.out.println(ess.toString());

				EmergencyServices_dao es_dao_impl = new EmergencyServices_dao_impl();

				es_dao_impl.insert(ess);
				System.out.println("EMERGENCY SERVICES inserted");
				// request.setAttribute("ess",ess);
				RequestDispatcher dispatcher = request.getRequestDispatcher("Home(admin).jsp");
				dispatcher.forward(request, response);

	}
}
}
