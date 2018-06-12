package com.wine.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.apache.log4j.Logger;
import org.springframework.util.DefaultPropertiesPersister;

public class DecryptPersist extends DefaultPropertiesPersister {
	private final Logger log = Logger.getLogger(DecryptPersist.class); 
	public void load(Properties props, InputStream is) throws IOException {
		props.load(is);
		if ((props.get("jdbc_password") != null)) {
			props.setProperty("jdbc_password" , ThreeDes.getInstance().decrypt(props.getProperty("jdbc_password")));
			log.info("decrypt jdbc_password:" + props.getProperty("jdbc_password"));
		}
		if ((props.get("jdbc_password2") != null)) {
			props.setProperty("jdbc_password2" , ThreeDes.getInstance().decrypt(props.getProperty("jdbc_password2")));
			log.info("decrypt jdbc_password2:" + props.getProperty("jdbc_password2"));
		}
		super.load(props, is);
//		OutputStream outputStream = null;
//		try {
//			outputStream = new ByteArrayOutputStream();
//			props.store(outputStream, "");
//			is = outStream2InputStream(outputStream);
//			super.load(props, is);
//		} catch (IOException e) {
//			throw e;
//		} finally {
//			outputStream.close();
//		}
	}
//	private InputStream outStream2InputStream(OutputStream out) {
//		ByteArrayOutputStream bos = new ByteArrayOutputStream();
//		bos = (ByteArrayOutputStream) out;
//		ByteArrayInputStream swapStream = new ByteArrayInputStream(bos.toByteArray());
//		return swapStream;
//	}
}