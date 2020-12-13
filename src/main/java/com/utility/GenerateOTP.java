package com.utility;

import java.util.Random;

public class GenerateOTP {

	public static void main(String[] args) {

		System.out.println(getRandomAlphaNumericPassword());

	}

	public int generateRandomIntIntRange(int min, int max) {
		Random r = new Random();
		return r.nextInt((max - min) + 1) + min;
	}

	
	

	private static String getAlphaNumericString(int n) {

		// chose a Character random from this String
		String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + "0123456789" + "abcdefghijklmnopqrstuvxyz";

		// create StringBuffer size of AlphaNumericString
		StringBuilder sb = new StringBuilder(n);

		for (int i = 0; i < n; i++) {

			// generate a random number between
			// 0 to AlphaNumericString variable length
			int index = (int) (AlphaNumericString.length() * Math.random());

			// add Character one by one in end of sb
			sb.append(AlphaNumericString.charAt(index));
		}

		return sb.toString();
	}

	public static String getRandomAlphaNumericPassword() {
		String alphaNumStr = "";
		while (true) {
			alphaNumStr = getAlphaNumericString(10);
			System.out.println(alphaNumStr);
			char[] alphanum = alphaNumStr.toCharArray();
			boolean isnumberAdded = false;
			for (char c : alphanum) {
				try {
					Integer.parseInt(String.valueOf(c));
					isnumberAdded = true;
					break;
				} catch (Exception e) {

				}
			}
			if (isnumberAdded) {
				break;
			}
		}
		return alphaNumStr;
	}

}
