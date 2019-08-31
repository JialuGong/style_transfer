package com.spring.mvc.controller;

import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.spring.mvc.entity.User;
import com.spring.mvc.util.FileUploadUtil;
import com.spring.mvc.util.FileUtil;

import net.sf.json.JSON;

@Controller
@RequestMapping("/test")
public class TestController {

	@ResponseBody
	@RequestMapping(value = "upload", method = { RequestMethod.GET, RequestMethod.POST })
	public String getRule(HttpServletRequest request, @RequestParam("file") MultipartFile file) {
		String name = request.getParameter("name");
		return name;
	}

	@ResponseBody
	@RequestMapping(value="/userPhotoUplaod", method= RequestMethod.POST)
	public String upLoad(HttpServletRequest request, HttpServletResponse response, Integer userId)
			throws Exception {

		Map<String, Object> map = new HashMap<String, Object>();

		// 从请求中获取到文件信息需要将请求转换为MultipartHttpServletRequest类型
		MultipartHttpServletRequest multipartRequest = request instanceof MultipartHttpServletRequest
				? (MultipartHttpServletRequest) request
				: null;
		
		System.out.println(multipartRequest != null);
		if(multipartRequest != null) {
			MultipartFile file1 = multipartRequest.getFile("file1");
			MultipartFile file2 = multipartRequest.getFile("file2");
			System.out.println(file1.getContentType() + " size:" + file1.getSize());
			System.out.println(file2.getContentType() + " size:" + file2.getSize());
			
			FileUtil.approvalFile(file1);
			FileUtil.approvalFile(file2);
		}

		
		
		return "uploaded";
	}
	
	/**
	 * 单个、批量文件上传
	 * 
	 * @param request
	 * @param response
	 * @param session
	 * @param module
	 *            获取传入的模块名称
	 * @return
	 */
	@RequestMapping(value = "/{module}", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public String uploadFiles(Model model,HttpServletRequest request, HttpSession session,
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