package com.utility;

import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathFactory;
import org.w3c.dom.Document;
// REF URL: https://developers.google.com/maps/documentation/geocoding/intro
public class LatLongGeneration {

	public static Double[] setAreaLatLong(String address) {
		try {
			int responseCode = 0;
			String api = "http://maps.googleapis.com/maps/api/geocode/xml?address="
					+ URLEncoder.encode(address, "UTF-8") + "&sensor=true&key=YOUR_API_KEY";
			System.out.println("URL : " + api);
			URL url = new URL(api);
			Double[] latLong = new Double[2];
			HttpURLConnection httpConnection = (HttpURLConnection) url.openConnection();
			httpConnection.connect();
			responseCode = httpConnection.getResponseCode();
			if (responseCode == 200) {
				DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
				;
				Document document = builder.parse(httpConnection.getInputStream());
				XPathFactory xPathfactory = XPathFactory.newInstance();
				XPath xpath = xPathfactory.newXPath();
				XPathExpression expr = xpath.compile("/GeocodeResponse/status");
				String status = (String) expr.evaluate(document, XPathConstants.STRING);
				if (status.equals("OK")) {
					expr = xpath.compile("//geometry/location/lat");
					String latitude = (String) expr.evaluate(document, XPathConstants.STRING);
					expr = xpath.compile("//geometry/location/lng");
					String longitude = (String) expr.evaluate(document, XPathConstants.STRING);
					
					latLong[0] = Double.parseDouble(latitude);
					latLong[1] = Double.parseDouble(longitude);
					// return new String[] {latitude, longitude};
				} else {
					throw new Exception("Error from the API - response status: " + status);
				}
			}
			return latLong;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static void main(String[] args) {
		String address = "Tenament 12,Ishwar Ami Krupa society,Ahmedabad-51";
		Double[] latLong = setAreaLatLong(address);
		System.out.println("LatLong : "+latLong);
	}
}

