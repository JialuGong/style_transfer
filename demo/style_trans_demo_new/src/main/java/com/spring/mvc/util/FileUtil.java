package com.spring.mvc.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.web.multipart.MultipartFile;

public class FileUtil {

	public static String approvalFile(MultipartFile fileContent, String FilePath) {
		OutputStream os = null;
		InputStream inputStream = null;
		String fileName = null;
		String oriName = fileContent.getOriginalFilename();
		try {
			inputStream = fileContent.getInputStream();
			// 生成随机文件名称
			fileName = RandomStringUtils.randomAlphanumeric(8) + oriName.substring(oriName.lastIndexOf("."));
			System.out.println("FileName: " + fileName + "\t<-- " + oriName);
		} catch (IOException e) {
			e.printStackTrace();
		}
		try {
			String path = FilePath;
			// 保存到临时文件
			// 1K的数据缓冲
			byte[] bs = new byte[1024];
			// 读取到的数据长度
			int len;
			// 输出的文件流保存到本地文件
			File tempFile = new File(path);
			if (!tempFile.exists()) {
				tempFile.mkdirs();
			}
			os = new FileOutputStream(tempFile.getPath() + File.separator + fileName);
			// 开始读取
			while ((len = inputStream.read(bs)) != -1) {
				os.write(bs, 0, len);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 完毕，关闭所有链接
			try {
				os.close();
				inputStream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return fileName;
	}
}
