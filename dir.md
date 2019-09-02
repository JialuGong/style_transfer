# 文件构成与配置文档
- ### 文件目录构成(按照Maven的组织形式):
> pom.xml</br>
> src
> >main
> >>resouces(项目资源)</br>
> >>java(java源码)</br>
> >>webapp
> >>>WEB-INF(web.xml\本地图片\\jsp视图等)</br>
> >>>public(静态资源,js,css)<br>
> >>
> >>index.jxp
> >
> >test
> >>java(项目的测试类)</br>
> >>resources(测试用的资源)</br>
> 
> target(打包输出目录)
> >classes</br>
> >test-classes</br>
> test.java</br>

- ### webapp文件夹目录构成
>  WEB-INF
> > views (放置.jsp)</br>
> > web.xml
> 
> public
>> css(放置css\less文件)</br>
>> js(放置js文件和组件)</br>
>> images(放置美化页面所需的图片,与image相区分)<br>
>> image(放置图片)
>>> origin(用户原图片)</br>
>>> style(风格图片)</br>
>>> result(生成图片暂存)</br>
>>> save(托管图片)<br>

-  	#### 图片命名方式:
##### 用户id+系统生成时间+随机字符串.png


