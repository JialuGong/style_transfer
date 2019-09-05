/**
 * @author:GHL
 * @description:register.js
 * @howtoUse:change the url in row 29(for interface) and 41(for login.jsp)
 * @version:1.0
 * @returns
 */
function register(){
    var basePath=document.getElementsByTagName("base");
    var name=$("#inputAccount").val();
    var password1=$("#inputPassword").val();
    var password2=$("#inputCheckPassword").val();
    var pattern=/^[A-Za-z0-9_-]*[A-Za-z_-][A-Za-z0-9_-]*$/;
    if(name) {
        if (pattern.test(name)) {
            if (password1) {
                if (password2) {
                    if (password1 !== password2) {
                        alert("两次密码不相同");
                    }
                    else{
                        formData=new FormData();
                        formData.append("name",name);
                        formData.append("password",password1);
                        formData.append("sex","男");
                        formData.append("age","21");
                        $.ajax({
                            type:"POST",
                            url:basePath+"" ,                      //需要完善url
                            data:formData,
                            contentType:false,
                            processData:false,
                            success: function(data){
                                if(data==="occupied"){
                                    $("#inputAccount").value="";
                                    $("#inputPassword").value="";
                                    $("#inputCheckPassword").value="";
                                    alert("用户名已经被占用");
                                }
                                else{
                                    window.onload(basePath+"") //url 需要修改
                                }
                            },
                            error:function(){
                                alert("表单提交错误,请重新输入");
                                $("#inputAccount").value="";
                                $("#inputPassword").value="";
                                $("#inputCheckPassword").value="";
                            }
                        });
                    }
                }
                else {
                    alert("确认密码不能为空")
                }
            }
            else {
                alert("密码不能为空");
            }
        }
        else{
            alert("用户名格式错误")
        }
    }
    else{
        alert("用户名不能为空");
    }
}