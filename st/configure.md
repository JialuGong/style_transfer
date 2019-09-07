## 配置文档

整个工程的目录:
```java
projectPath="/home/jialu/tomcat/webapps/项目名/";
```

```java
basePath(webapp)=projectPath+"webapp/";
```
各个image的dir的path
```java
origin=basePath+"public/image/origin/";
style=basePath+"public/image/style/";
result=basePath+"public/image/result/";
save=basePath+"public/image/save/";
```

## 注册登录
- #####  register

###### 前端传输:
ajax:post
dataType:FormData
```js
{
"name":name,
"password":password,
"sex":sex,
"age":age
}

```
后端需返回的值
```java
//用户名被占用
String str="occupied";
//名字或者密码为空
String str="vacant";
//注册失败
String str="register_success";
//注册失败
String str="register_fail";

```

- ##### login
ajax:post
dataType:FormData

```js
{
"name":name,
"password":password
}
```
后端需返回的值
looking forward data type:string
```java
//用户名或密码为空
String str="vacant";
//用户名错误:
String str="NameNotFound";
//密码错误:
String str="PasswordError";
//登录成功
String str="login_success";
//登录失败
String str="login_fail";
}

```


