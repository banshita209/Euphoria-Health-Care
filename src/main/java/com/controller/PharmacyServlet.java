package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Pharmacy_dao;
import com.dao.Pharmacy_dao_impl;
import com.model.Address;
import com.model.Pharmacist;
import com.model.Pharmacy;

/**
 * Servlet implementation class PharmacyServlet
 */
@WebServlet("/PharmacyServlet")
public class PharmacyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PharmacyServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doget: pharmacy");
		String action = request.getParameter("action");
		System.out.println("action =" + action);

		HttpSession session = request.getSession();

		Pharmacy_dao_impl pharmacy_dao_impl = new Pharmacy_dao_impl();
		if (action.equals("Edit_Pharmacy") || action.equals("Pharmacy_Profile")) {

			System.out.println("in the profile and edit condition ");
			Pharmacist pharmacist = (Pharmacist) session.getAttribute("user");
			Pharmacy pharmacy = pharmacy_dao_impl.getpharmacy(pharmacist.getPhst_id());
			// System.out.println(pharmacy.toString());

			if (action.equals("Edit_Pharmacy")) {
				request.setAttribute("pharmacy", pharmacy);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("EditPharmacy.jsp");
				requestDispatcher.forward(request, response);
			}
			if (action.equals("Pharmacy_Profile")) {

				request.setAttribute("pharmacy", pharmacy);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("Profile(pharmacy).jsp");
				requestDispatcher.forward(request, response);
			}
		}
		if (action.equals("Insert Pharmacy")) {
			Pharmacist pharmacist = (Pharmacist) session.getAttribute("user");
			System.out.println(pharmacist.toString());
			Boolean value = pharmacy_dao_impl.checkpharmacyAvailability(pharmacist);
			System.out.println("value =" + value);
			if (value == true) {
				System.out.println("in value condition");
				response.sendRedirect("registration(pharmacy).jsp");

			} else {
				response.sendRedirect("Home(pharmacist).jsp?msg=cannot insert");
			}
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("dopost: pharmacy");
		String action = request.getParameter("action");
		System.out.println("action =" + action);

		HttpSession session = request.getSession();

		Pharmacy_dao pharmacy_dao_impl = new Pharmacy_dao_impl();

		if (action.equals("Update Pharmacy Details")) {

			System.out.println("inside submit pharmcy");

			Pharmacist pharmacist = (Pharmacist) session.getAttribute("user");
			System.out.println(pharmacist.toString());

			Pharmacy pharmacy = new Pharmacy();
			Address address = new Address();

			address.setType("pharmacy-professional");
			address.setAdd_detail(request.getParameter("add_detail"));
			address.setLandmark(request.getParameter("landmark"));
			address.setArea(request.getParameter("add_area"));
			address.setCity(request.getParameter("city"));
			System.out.println("pincode :" + request.getParameter("pincode"));
			address.setPincode(Integer.parseInt(request.getParameter("pincode")));

			pharmacy.setPhcy_name(request.getParameter("name"));
			pharmacy.setAddress(address);

			pharmacy.setPhcy_mobile(Long.parseLong(request.getParameter("mobile")));
			pharmacy.setPharmacist(pharmacist);

			Boolean value = pharmacy_dao_impl.checkpharmacyAvailability(pharmacist);

			if (value == true) {
				System.out.println(pharmacy.toString());
				pharmacy_dao_impl.insert(pharmacy);

			} else {

				pharmacy.setPhcy_id(Long.parseLong(request.getParameter("id")));
				System.out.println("update: "+pharmacy.toString());

				pharmacy_dao_impl.update(pharmacy);
			}
			request.setAttribute("pharmacy", pharmacy);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("Profile(pharmacy).jsp");
			requestDispatcher.forward(request, response);

		}
	}

}
