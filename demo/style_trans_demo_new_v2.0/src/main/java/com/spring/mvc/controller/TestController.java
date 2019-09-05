package com.spring.mvc.controller;

import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.RandomStringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.spring.mvc.TransferImage.TransferImage;
import com.spring.mvc.entity.User;
import com.spring.mvc.util.DeleteDir;
import com.spring.mvc.util.FileUploadUtil;
import com.spring.mvc.util.FileUtil;

@Controller
@RequestMapping("/test")
public class TestController {
	
	public static final String basePath = "D:/User/Desktop/proj/style_trans_demo_new/";

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
					filepath3 + "res.jpg");
			
			if (result == 0) {
				System.out.println("Transfer image successfully!");
			} else {
				System.out.println("Transfer Failed!");
			}
		} else {
			System.out.println("False");
		}
		// 转发到showTest.jsp
		return "Test/showTest";
	}

	/**
	 * 单个、批量文件上传
	 * 
	 * @param request
	 * @param response
	 * @param session
	 * @param module   获取传入的模块名称
	 * @return
	 */
	@RequestMapping(value = "/{module}", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public String uploadFiles(Model model, HttpServletRequest request, HttpSession session,
			@PathVariable("module") String module) {

		// 获取session中保存的用户信息
		User user = (User) session.getAttribute("user");

		// 创建list集合用于获取文件上传返回路径名
		List<String> list = new ArrayList<String>();

		try {

			// 获取上传完文件返回的路径,判断module模块名称是否为空，如果为空则给default作为文件夹名
			list = FileUploadUtil.uploadFile(request, user.getUsername(),
					(module == null || module.length() == 0) ? "default" : module);
			// model属性也行
			model.addAttribute("fileUrlList", list);

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.err.println("上传文件发生错误=>>" + e.getMessage());

		}
		// 转发到uploadTest.jsp页面
		return "uploadTest";
	}

	/**
	 * 跳转至文件上传页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/common/upload-page", method = RequestMethod.GET)
	public String uploadTestPage() {

		return "uploadTest";
	}

}