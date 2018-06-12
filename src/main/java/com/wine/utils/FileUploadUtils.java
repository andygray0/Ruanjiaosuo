package com.wine.utils;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public class FileUploadUtils {
	// 默认大小 50M
	public static final long DEFAULT_MAX_SIZE = 52428800;
	// 默认上传的地址
	public static String defaultBaseDir = "upload";

	public static final String upload(HttpServletRequest request, MultipartFile file, String path) throws Exception {
		String fileName = null;
		if(path == null || path.length() == 0) {
			fileName = defaultBaseDir;
		} else {
			fileName = path;
		}
		String filename = extractFilename(file, fileName);
        String[] finlen = filename.split("\\.");
        long n = new Date().getTime();
        String newfN = finlen[0]+"-"+n+"."+finlen[1];
		File desc = getAbsoluteFile(extractUploadDir(request), newfN);
		file.transferTo(desc);


		return newfN;
	}

	private static final File getAbsoluteFile(String uploadDir, String filename) throws IOException {
		if (uploadDir.endsWith("/")) {
			uploadDir = uploadDir.substring(0, uploadDir.length() - 1);
		}
		if (filename.startsWith("/")) {
			filename = filename.substring(0, uploadDir.length() - 1);
		}
        File desc = new File(uploadDir + "/" + filename);
		if (!desc.getParentFile().exists()) {
			desc.getParentFile().mkdirs();
		}
		if (!desc.exists()) {
			desc.createNewFile();
		}
		return desc;
	}

	public static final String extractFilename(MultipartFile file,
			String baseDir) throws UnsupportedEncodingException {
		String filename = file.getOriginalFilename();
		int slashIndex = filename.indexOf("/");
		if (slashIndex >= 0) {
			filename = filename.substring(slashIndex + 1);
		}
		filename = baseDir + "/" + filename;
		return filename;
	}

	public static final String extractUploadDir(HttpServletRequest request) {
		return request.getSession().getServletContext().getRealPath("/");
	}
}
