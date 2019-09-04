<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String localPath = "D:/User/Desktop/proj/style_trans_demo_new/";
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String imgPath = localPath + "src/main/webapp/public/result_img/res.jpg";
	String imgSrc = basePath + "test/getImg?imgPath=" + imgPath + "&check=" + Math.random();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>showTest</title>
<script type="text/javascript">
	var util = {
		basePath : function basePath() {// 返回项目路径
			var context = document.getElementsByTagName('base')[0].href;
			return context;
		}
	}
</script>
</head>
<body>
	<!-- 
	<img src="<%=basePath%>public/test_dir/transfered/res.jpg" />
	<%=basePath%>public/test_dir/transfered/res.jpg
	-->
	<!-- <%=imgSrc%> -->
	<img src="<%=imgSrc%>" />
</body>
</html>