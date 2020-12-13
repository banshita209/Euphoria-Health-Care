package com.utility;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.dao.Common_dao_impl;
import com.dao.Report_dao_impl;
import com.model.Patient;
import com.model.Report;

/**
 * Servlet implementation class ReportUploadServlet
 */
@WebServlet("/ReportUploadServlet")
public class ReportUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ReportUploadServlet() {
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("fileupload : dopost method called.");

		HttpSession session = request.getSession();
		String category = (String) session.getAttribute("category");
		System.out.println("category of user : " + category);

		System.out.println("in the condition for patient");
		Patient patient1 = (Patient) session.getAttribute("user");

		Common_dao_impl<Report> report_dao_impl = new Report_dao_impl();
		String path1 = "H:\\eclipse-workspace\\Euphoria\\src\\main\\webapp\\Patient-report" + File.separator;

		Report report = new Report();
		String uName1 = request.getParameter("uname");
		long date_mili1 = System.currentTimeMillis();
		report.setR_date(new Date(date_mili1));
		// Long.parseLong(id);

		// Doctor doctor = common_dao_Doctor.get(Long.parseLong(id));
		/*
		 * System.out.println(doctor.toString()); prescription.setPrescribed_by(doctor);
		 */
		report.setPatient(patient1);
		System.out.println(report.toString());
		report_dao_impl.insert(report);

		if (ServletFileUpload.isMultipartContent(request)) {
			try {
				List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
				System.out.println("List >>");
				for (FileItem item : multiparts) {
					if (!item.isFormField()) {
						System.out.println("items >>");
						String name = new File(item.getName()).getName();
						String ext = name.substring(name.lastIndexOf("."));
						System.out.println("name : " + name + ", Ext:" + ext);
						item.write(new File(path1 + report.getR_id() + ext));
						report.setR_path(path1 + report.getR_id() + ext);
						report_dao_impl.update(report);
					}
				}
			} catch (Exception ex) {
				request.setAttribute("message", "File Upload Failed due to " + ex);
				ex.printStackTrace();
			}
		}

		System.out.println("Done");
		response.sendRedirect("Patient_home.jsp");
	}

}
