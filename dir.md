# 文件构成与配置文档
- ### 文件目录构成(按照Maven的组织形式):
> pom.xml
> src
> >main
> >>resouces(项目资源)
> >>java(java源码)
> >>webapp
> >>>WEB-INF(web.xml\本地图片\\jsp视图等)
> >>>public(静态资源,js,css)
> >>
> >>index.jxp
> >
> >test
> >>java(项目的测试类)
> >>resources(测试用的资源)
> 
> target(打包输出目录)
> >classes
> >test-classes
> test.java

- ### webapp文件夹目录构成
>  WEB-INF
> > views (放置.jsp)
> > web.xml
> 
> public
>> css(放置css\less文件)
>> js(放置js文件和组件)
>> image(放置图片)
>>> origin(用户原图片)
>>> style(风格图片)
>>> result(生成图片暂存)
>>> save(托管图片)

-  	#### 图片命名方式:
##### 用户id+系统生成时间+随机字符串.png


