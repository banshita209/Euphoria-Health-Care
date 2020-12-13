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
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.dao.Analysis_dao_impl;
import com.dao.Common_dao_impl;
import com.dao.Doctor_dao_impl;
import com.dao.Prescription_dao_impl;
import com.dao.Report_dao_impl;
import com.model.Analysis;
import com.model.Doctor;
import com.model.MedicalRepresentative;
import com.model.Patient;
import com.model.Prescription;
import com.model.Report;

/**
 * Servlet implementation class UploadFileController
 */
@WebServlet("/UploadFileController")
// @MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 *
// 5, maxRequestSize = 1024 * 1024 * 5 * 5)
public class UploadFileController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UploadFileController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String category = (String) session.getAttribute("category");
		System.out.println("category of user : " + category);

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

		if (category.equals("patient")) {
			System.out.println("in the condition for patient");
			Patient patient = (Patient) session.getAttribute("user");

			Common_dao_impl<Prescription> common_dao_impl = new Prescription_dao_impl();
			Common_dao_impl<Doctor> common_dao_Doctor = new Doctor_dao_impl();
			String path = "H:\\eclipse-workspace\\Euphoria\\src\\main\\webapp\\prescription" + File.separator;

			Prescription prescription = new Prescription();
			String uName = request.getParameter("uname");
			long date_mili = System.currentTimeMillis();
			prescription.setPr_date(new Date(date_mili));
			prescription.setPrescribed_to(patient);
			String id = request.getParameter("dr_id");
			// Long.parseLong(id);
			System.out.println("dr id " + id);
			// Doctor doctor = common_dao_Doctor.get(Long.parseLong(id));
			/*
			 * System.out.println(doctor.toString()); prescription.setPrescribed_by(doctor);
			 */

			System.out.println(prescription.toString());
			common_dao_impl.insert(prescription);

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
							item.write(new File(path + prescription.getPr_id() + ext));
							prescription.setPr_path(path + prescription.getPr_id() + ext);
							common_dao_impl.update(prescription);
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

		// ********************************upload analaysis***************************

		if (category.equals("mr")) {

			MedicalRepresentative medicalRepresentative = (MedicalRepresentative) session.getAttribute("user");

			Common_dao_impl<Analysis> common_dao_impl1 = new Analysis_dao_impl();

			String path1 = "H:\\eclipse-workspace\\Euphoria\\src\\main\\webapp\\analysis" + File.separator;

			Analysis analysis = new Analysis();

			long date_mili1 = System.currentTimeMillis();
			analysis.setAna_date(new Date(date_mili1));
			analysis.setMedicalRepresentative(medicalRepresentative);
			;

			System.out.println(analysis.toString());
			common_dao_impl1.insert(analysis);
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
							item.write(new File(path1 + analysis.getAna_id() + ext));
							analysis.setAna_desc(path1 + analysis.getAna_id() + ext);
							common_dao_impl1.update(analysis);
						}
					}
				} catch (Exception ex) {
					request.setAttribute("message", "File Upload Failed due to " + ex);
					ex.printStackTrace();
				}

			}
			System.out.println("Done");
			response.sendRedirect("Home(mr).jsp");
		}
	}

	private String getFileName(Part part) {
		for (String content : part.getHeader("content-disposition").split(";")) {
			if (content.trim().startsWith("filename"))
				return content.substring(content.indexOf("=") + 2, content.length() - 1);
		}
		return "abc";
	}

}
