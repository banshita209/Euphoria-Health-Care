package com.utility;

import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

//REF URL if got issue:https://stackoverflow.com/questions/26686626/sending-mail-using-javamail-getting-authentication-issue
//https://myaccount.google.com/lesssecureapps
public class EmailSendingUtility {
	// Email sending example and Lib for email sending functionality activation.jar,
	// mail.jar
	public static void main(String[] args) {
		sendEmail("apexapatel27321@gmail.com", "Hello Apexa", "My Test email message");
	}

	public static void sendEmail(String toEmail, String subject, String messageText) {
		String to = toEmail; // "apexapatel27321@gmail.com";// change accordingly

		// Get the session object
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465"); // 587

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("euphoriahealthcare.abgp@gmail.com", "abgp@euphoria");// change
																										// accordingly
			}
		});

		// compose message
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress("euphoriahealthcare.abgp@gmail.com"));// change accordingly
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			message.setSubject(subject);
			message.setText(messageText);

			// send message
			Transport.send(message);

			System.out.println("message sent successfully");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}

	public void sendOTP(String email, String name, int otp) {
		// String to = email;// change accordingly
		System.out.println("In EmailSending");
		System.out.println("Email:" + email);
		// Get the session object
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465"); // 587

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("euphoriahealthcare.abgp@gmail.com", "abgp@euphoria");// change

			}
		});

		// compose message

		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress("euphoriahealthcare.abgp@gmail.com"));// change accordingly
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
			message.setSubject("Hello " + name);
			message.setText("Your OTP is:" + otp);
			// send message
			Transport.send(message);

			System.out.println("message sent successfully");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}

	public void sendPrescriptionorQR(String email, String msg, String attachment) {

		System.out.println("In EmailSending");
		// System.out.println("Email:" + email);
		// Get the session object
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465"); // 587

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("euphoriahealthcare.abgp@gmail.com", "abgp@euphoria");// change

			}
		});

		// compose message

		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress("euphoriahealthcare.abgp@gmail.com"));// change accordingly
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
			message.setSubject("Patient Prescription");
			BodyPart messageBodyPart1 = new MimeBodyPart();
			messageBodyPart1.setText(msg);
			Multipart multipart = new MimeMultipart();
			multipart.addBodyPart(messageBodyPart1);
			if (attachment != null && !attachment.trim().isEmpty()) {
				addAttachment(multipart, attachment);
			}

			message.setContent(multipart);
			Transport.send(message);

			System.out.println("message sent successfully");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}

	public static void addAttachment(Multipart multipart, String filename) throws MessagingException {
		DataSource source = new FileDataSource(filename);
		BodyPart messageBodyPart = new MimeBodyPart();
		messageBodyPart.setText("Hello my first message.");
		messageBodyPart.setDataHandler(new DataHandler(source));
		messageBodyPart.setFileName(filename);
		multipart.addBodyPart(messageBodyPart);
	}

	public void sendMail(String email, String msg, String status) {
		System.out.println("In EmailSending");
		// System.out.println("Email:" + email);
		// Get the session object
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465"); // 587

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("euphoriahealthcare.abgp@gmail.com", "abgp@euphoria");// change

			}
		});
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress("euphoriahealthcare.abgp@gmail.com"));// change accordingly
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
			if (status.equals("appointment")) {
				message.setSubject("Appointment with Dr.:");
			} else if (status.endsWith("meeting")) {
				message.setSubject("Meeting with Dr.:");
			}
			BodyPart messageBodyPart1 = new MimeBodyPart();
			messageBodyPart1.setText(msg);
			Multipart multipart = new MimeMultipart();
			multipart.addBodyPart(messageBodyPart1);

			message.setContent(multipart);
			Transport.send(message);

			System.out.println("message sent successfully");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}

	}

	public void sendFeedbackMail(String fromemail, String msg) {
		System.out.println("In EmailSending");
		// System.out.println("Email:" + email);
		// Get the session object
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465"); // 587

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("euphoriahealthcare.abgp@gmail.com", "abgp@euphoria");// change

			}
		});
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(fromemail));// change accordingly
			message.addRecipient(Message.RecipientType.TO, new InternetAddress("euphoriahealthcare.abgp@gmail.com"));

			BodyPart messageBodyPart1 = new MimeBodyPart();
			messageBodyPart1.setText(msg);
			Multipart multipart = new MimeMultipart();
			multipart.addBodyPart(messageBodyPart1);

			message.setContent(multipart);
			Transport.send(message);

			System.out.println("message sent successfully");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}

	}

}
