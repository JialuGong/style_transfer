package com.spring.mvc.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.mvc.TransferImage.TransferImage;
import com.spring.mvc.util.FileUtil;

@Controller
public class MainController {
	
	public static final String basePath = "D:/User/Desktop/proj/style_trans_demo_new/";
	public static final String webBasePath = "http://localhost/style_trans_demo/";

	public static void main(String[] args) {

	}

	@ResponseBody
	@RequestMapping(value = "/upload", method = { RequestMethod.GET, RequestMethod.POST })
	public String getRule(HttpServletRequest request, @RequestParam("file") MultipartFile file) {
		String name = request.getParameter("name");
		return name;
	}

	@RequestMapping(value = "/getImg", method = RequestMethod.GET)
	public void getImg(String imgPath, HttpServletRequest request, HttpServletResponse response) {
		System.err.println("Get Img form : " + imgPath);
		try {
			File file = new File(imgPath);
			if(file.exists()) {
				InputStream is = new FileInputStream(file);
				int size = is.available();
				byte[] buffer = new byte[size];
				is.read(buffer);
				is.close();
				response.setContentType("image/*");
				OutputStream toClient = response.getOutputStream();
				toClient.write(buffer);
				toClient.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@ResponseBody
	@RequestMapping(value = "/userPhotoUpload", method = RequestMethod.POST)
	public String upLoad(HttpServletRequest request, HttpServletResponse response, Integer userId) throws Exception {

		System.err.println("-------------------------------------");
		System.out.println("Ready to saving files.");
		Map<String, Object> map = new HashMap<String, Object>();

		// 从请求中获取到文件信息需要将请求转换为MultipartHttpServletRequest类型
		MultipartHttpServletRequest multipartRequest = request instanceof MultipartHttpServletRequest
				? (MultipartHttpServletRequest) request
				: null;

		if (multipartRequest != null) {
			// 原图片路径
			String filepath1 = basePath + "src/main/webapp/public/transfer/origin_img/";
			// 风格图片路径
			String filepath2 = basePath + "src/main/webapp/public/transfer/style_img/";
			// 转化后图片路径
			String filepath3 = basePath + "src/main/webapp/public/transfer/result_img/";
			//	从request接收文件
			MultipartFile file1 = multipartRequest.getFile("file1");
			MultipartFile file2 = multipartRequest.getFile("file2");
			// 将接收到的文件存储到本地
			String newFileName1 = FileUtil.approvalFile(file1, filepath1);
			String newFileName2 = FileUtil.approvalFile(file2, filepath2);
			String newFileName3 = RandomStringUtils.randomAlphanumeric(8) + ".jpg";
			//	输出接收文件信息
			System.out.println("-------------------------------------");
			System.out.println(
					"File:\t" + newFileName1 +
					"\tType:\t" + file1.getContentType() +
					"\tSize:\t" + file1.getSize());
			System.out.println(
					"File:\t" + newFileName2 +
					"\tType:\t" + file2.getContentType() +
					"\tSize:\t" + file2.getSize());
			/*
			System.out.println("-------------------------------------");
			System.out.println("Path1:\t" + filepath1 + newFileName1);
			System.out.println("Path2:\t" + filepath2 + newFileName2);
			System.out.println("Path3:\t" + filepath3 + "res.jpg");
			*/

			// 调用转换图片
			int result = 100;
			result = TransferImage.getTrans_img().transfer_image(
					filepath1 + newFileName1,
					filepath2 + newFileName2,
					filepath3 + newFileName3);
			
			if (result == 0) {
				System.out.println("Transfer image successfully!");
				// 返回图片所在静态资源url
				return webBasePath + "public/transfer/result_img/" + newFileName3;
			} else {
				System.out.println("Transfer Failed!");
			}
		} else {
			System.out.println("False");
		}
		// 失败返回空
		return null;
	}

}
