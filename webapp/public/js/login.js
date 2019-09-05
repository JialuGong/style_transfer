/***
 * author:GHL
 * version:1.0
 * description:this is a test js code and to us this code ,you need to change some url
 *
 */
function load(){
    basePath=document.getElementsByTagName("base");
    var name = $("#inputAccount").val();
    var password=$("#inputPassword").val();
    if(name&&password){
        formData=new FormData();
        formData.append("name",name);
        formData.append("password",password);
        $.ajax({
            type:"POST",
            url:basePath+"",    //url需要修改
            data:formData,
            contentType:false,
            processData:false,
            success:function(data){
                if(data==="vacant" || data==="NameNotFound" || data==="PasswordError"){
                    alert("表单提交错误");
                }
                else if(data==="login_error"){
                    alert("登录错误");
                }
                else{
                    window.onload();  //need to add url
                }
            },
            error:function(){
                alert("登录出错")
            }
        });
    }
    else{
        alert("请输入用户名和密码");
        $("#inputAccount").val("");
        $("#inputPassword").val("");
    }
}