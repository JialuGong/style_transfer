#Update v1.2

>修复了表单重新提交图片不能及时更新的bug
>以及相应删除了代码中些许不合理之处

##关于本程序移植需要修改的部分

###1、com.spring.mvc.controller.TestController

>将第40行常量basePath修改为对应的eclipse项目路径

###2、/python_package/main.py

>将第24行"root = "后的内容修改为对应的eclipse项目路径

###3、/src/main/webapp/WEB-INF/views/showTest.jsp

>将第5行"localPath = "后的内容修改为对应的eclipse项目路径

#Update v1.3

>修复了py路径错误的basePath
>修复了不能使用中文文件名图片的bug