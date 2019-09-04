package com.spring.mvc.TransferImage;

import java.io.BufferedReader;
import java.io.InputStreamReader;

import com.spring.mvc.controller.TestController;

public class TransferImage {
	
	//使用单一实例
	private static TransferImage trans_img = null;
	
	private TransferImage() {
		
	}
	
	public static TransferImage getTrans_img() {
		if(trans_img == null) {
			trans_img = new TransferImage();
		}
		return trans_img;
	}
	
	/**
	 * 该方法创建一个新的进程，执行 ./package/main.py 文件进行图片风格迁移， 并将风格迁移后得到的图片储存在指定位置 (save_path)。
	 * 调用 ./package 下 的 main.py 并执行成功返回 0 ， 若失败则返回 1。
	 * 
	 * @param content_path: 原图储存路径
	 * @param style_path: 风格图储存路径
	 * @param save_path: 风格转换后得到的图片需要存储的路径
	 * 
	 *        return 0（执行成功） or 1（执行失败）。
	 **/
	public int transfer_image(String content_path, String style_path, String save_path) {

		String[] arguments = new String[] {
				"python",
				TestController.basePath + "python_package/main.py",//path for main.py
				content_path,
				style_path,
				save_path,
				TestController.basePath
		};

		try {
			Process process = Runtime.getRuntime().exec(arguments);
			BufferedReader in = new BufferedReader(new InputStreamReader(process.getInputStream()));
			String line = null;
			while ((line = in.readLine()) != null) {
				System.out.println(line);
			}
			in.close();
			int re = process.waitFor();
			return re;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return 1;
	}
}
