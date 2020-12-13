package com.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Common_dao_impl;
import com.dao.OTP_dao_impl;
import com.model.OTP;
import com.utility.EmailSendingUtility;
import com.utility.GenerateOTP;

/**
 * Servlet implementation class AjaxController
 */
@WebServlet("/AjaxController")
public class AjaxController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AjaxController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		System.out.println("In post");

		String name = request.getParameter("Name");
		String email = request.getParameter("Email");

		System.out.println("name:" + name);
		System.out.println("email:" + email);

		GenerateOTP otp = new GenerateOTP();
		Integer otp2 = otp.generateRandomIntIntRange(1000, 9999);

		EmailSendingUtility emailUtility = new EmailSendingUtility();
		emailUtility.sendOTP(email, name, otp2);
		System.out.println("In AjaxController OTP : " + otp2);
		response.setContentType("text/html");

		OTP otpp = new OTP();
		otpp.setEmail(email);
		otpp.setSendOTP(otp2);

		Common_dao_impl<OTP> otp4 = new OTP_dao_impl();

		long date_mili = System.currentTimeMillis();
		otpp.setCreate_date(new Date(date_mili));

		System.out.println("inserting OTP");

		otp4.insert(otpp);
		//String s=String.valueOf(otp2);
		response.getWriter().write("");
	

	}

}
