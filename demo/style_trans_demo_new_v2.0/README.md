# Update v1.2

>修复了表单重新提交图片不能及时更新的bug</br>
>以及相应删除了代码中些许不合理之处

## 关于本程序移植需要修改的部分

### 1、com.spring.mvc.controller.TestController

>将第40行常量basePath修改为对应的eclipse项目路径

### 2、/python_package/main.py

>将第24行"root = "后的内容修改为对应的eclipse项目路径

### 3、/src/main/webapp/WEB-INF/views/showTest.jsp

>将第5行"localPath = "后的内容修改为对应的eclipse项目路径

# Update v1.3

>修复了py路径错误的basePath</br>
>修复了不能使用中文文件名图片的bug

# Update v1.3.1

>main.py的basePath不需要修改了

# Update v1.3.2

>修正了下列文件的userPhotoUpload拼写错误 </br>
>/src/main/webapp/WEB-INF/views/uploadTest.jsp中第43、61行 </br>
>com.spring.mvc.controller.TestController中第75行

# Update v1.3.3

>main.py新增了工作目录的命令行参数

# Update v1.3.4

>现在可以通过访问http://localhost:&{port}/style_trans_demo/welcome/uploadTest2的方式，使用ajax上传实现静态资源路径的返回

# Update v2.0

>简化了项目路径，将test类与成品分离