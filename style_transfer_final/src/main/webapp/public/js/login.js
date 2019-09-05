/***
 * author:GHL
 * version:1.0
 * description:this is a test js code and to us this code ,you need to change some url
 *
 */
function login() {
    basePath = document.getElementsByTagName("base");
    var name = $("#inputAccount").val();
    var password = $("#inputPassword").val();
    if (name && password) {
        formData = new FormData();
        formData.append("username", name);
        formData.append("password", password);
        // $("#apply_link_form").submit(function(){
        //         parent.layer.close(index); //再执行关闭
        //         $.ajax({
        //             async: false,
        //             type: "POST",
        //             url:'${pageContext.request.contextPath}/link/apply',
        //             contentType : "application/x-www-form-urlencoded; charset=utf-8",
        //             data:$("#apply_link_form").serialize(),
        //             dataType: "text",
        //             success: function () {
        //               },
        //             error: function () {
        //             }
        //         })
        //     })

        $.ajax({
            type: "POST",
            url: basePath+"user/login",    //url需要修改
            data: formData,
            contentType: false,
            processData: false,
            success: function (data) {

                if (data === "vacant" || data === "NameNotFound" || data === "PasswordError") {
                    alert("表单提交错误");
                }
                else if (data === "login_error") {
                    alert("登录错误");
                }
                else {
                    window.location.href = "/welcome/uploadTest";
                }
            },
            error: function () {
                alert("登录出错")
            }
        });
    }
    else {
        alert("请输入用户名和密码");
        $("#inputAccount").val("");
        $("#inputPassword").val("");
    }
}