package com.wine.utils;

import java.security.Key;
import java.security.MessageDigest;
import java.security.Security;

import javax.crypto.Cipher;

import org.apache.log4j.Logger;

public class ThreeDes {
	private static String defaultKey = "6a1896-8e3c-925x";
	private static ThreeDes des = new ThreeDes();
	
	private final Logger logger = Logger.getLogger(ThreeDes.class);
	private Cipher encryptCipher = null;
	private Cipher decryptCipher = null;
	/**
	 * 默认构造函数
	 */
	private ThreeDes() {
		this(defaultKey);

	}
	
	public static ThreeDes getInstance() {
		return des;
	}
	
	public ThreeDes(String strKey) {
		Security.addProvider(new com.sun.crypto.provider.SunJCE());
		Key key = getKey(strKey.getBytes());
		try {
			encryptCipher = Cipher.getInstance("DES");
			encryptCipher.init(Cipher.ENCRYPT_MODE, key);

			decryptCipher = Cipher.getInstance("DES");
			decryptCipher.init(Cipher.DECRYPT_MODE, key);
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	}

	public String encrypt(String str) {
		byte[] byteMi = null;
		byte[] byteMing = null;

		// 加密后的字符串
		String strEncrypt = "";

		try {
			byteMing = str.getBytes("UTF8");
			byteMi = encryptCipher.doFinal(byteMing);
			strEncrypt = Base64.encode(byteMi);
		} catch (Exception e) {
			logger.error(e.getMessage());
		} finally {
			byteMing = null;
			byteMi = null;
		}

		return strEncrypt;
	}

	public String decrypt(String strMi) {
		byte[] byteMing = null;
		byte[] byteMi = null;
		String strMing = "";
		try {
			byteMi = Base64.decode(strMi);
			byteMing = decryptCipher.doFinal(byteMi);
			strMing = new String(byteMing, "UTF8");
		} catch (Exception e) {
			logger.error(e.getMessage());
		} finally {
			byteMing = null;
			byteMi = null;
		}

		return strMing;
	}

	private Key getKey(byte[] array) {
		// 创建一个空的8位字节数组
		byte[] arrayTemp = new byte[8];
		int length = array.length;

		// 长度是否大于8
		if (length > 8) {
			System.arraycopy(array, 0, arrayTemp, 0, 8);
		} else {
			System.arraycopy(array, 0, arrayTemp, 0, length);
		}

		// 生成密钥
		Key key = new javax.crypto.spec.SecretKeySpec(arrayTemp, "DES");

		return key;
	}
	public String MD5(String s) {
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] bytes = md.digest(s.getBytes("utf-8"));
			return toHex(bytes);
		}
		catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	private static String toHex(byte[] bytes) {

		final char[] HEX_DIGITS = "0123456789abcdef".toCharArray();
		StringBuilder ret = new StringBuilder(bytes.length * 2);
		for (int i=0; i<bytes.length; i++) {
			ret.append(HEX_DIGITS[(bytes[i] >> 4) & 0x0f]);
			ret.append(HEX_DIGITS[bytes[i] & 0x0f]);
		}
		return ret.toString();
	}
	public static void main(String[] args) {
		//System.out.println(new ThreeDes().encrypt(args[0]));
		System.out.println(new ThreeDes().encrypt("root"));
		System.out.println(new ThreeDes().encrypt("123456"));
		System.out.println(new ThreeDes().encrypt("www.ganta.site"));//
		System.out.println(new ThreeDes().decrypt("omnsvseSe9JMJLAs5Xp6nSNaS+NlmHBR"));//
		System.out.println(new  ThreeDes().MD5("123456"));//
		System.out.println(new  ThreeDes().MD5("toor"));//
		System.out.println(new  ThreeDes().MD5("admin"));//

	}

}
