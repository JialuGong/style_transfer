
	/**
	 * @author:GHL
	 * @description:upload.js(to upload user's photo) and delete the test
	 * @howtoUse:change the url in row 103(for interface)
	 * @version:1.1
	 * @TODO:add function download() and add btn disabled(need to test)
	 * @returns
	 */
	
	/**
 * @author:GHL
 * @description:upload.js(to upload user's photo)
 * @howtoUse:change the url in row 80(for interface)
 * @version:1.0
 * @returns
 */

//检验图片格式是否正确的函数
function examine(id){
    var file=document.getElementById(id).files[0];
    var pattern=/image\W/;
    if(file){
        var fileType=file.type;
        var fileSize=file.size;
        if(pattern.test(fileType)){
            if(fileSize<=2*1024*1024){
                return true;
            }
            else{
                alert("图片的大小不能超过2M");
                document.getElementById(id).value="";
                return false;
            }
        }
        else{
            alert("请选择正确的图片格式");
            document.getElementById(id).value="";
            return false;
        }
    }
    else{
        alert("请选择图片");
        return false;
    }
}
//图片一的显示
function file1Selected(){
    if(examine("fileToUpload_1")){
        var file=document.getElementById('fileToUpload_1').files[0];
        var url = window.URL.createObjectURL(file);
        document.getElementById('source_img_1').src = url;
    }
}
//图片二的显示
function file2Selected(){
    if(examine("fileToUpload_2")){
        var file=document.getElementById('fileToUpload_2').files[0];
        var url = window.URL.createObjectURL(file);
        document.getElementById('source_img_2').src=url;
    }
}

//图片的上传
function uploadFile(){
    $('#upload_btn').prop('disabled',true);
    var basePath = document.getElementsByTagName('base')[0].href;
    id1="fileToUpload_1";
    id2="fileToUpload_2";
    //检查图片路径是否相同,以此判断图片是否相同
    if(examine(id1)&&examine(id2)){
        var file1=document.getElementById(id1).files[0];
        var file2=document.getElementById(id2).files[0];
        var url1=window.URL.createObjectURL(file1);
        var url2=window.URL.createObjectURL(file2);
        if(url1===url2){
            alert("请选择两张不同的图片");
            file1.value="";
            file2.value="";
        }
        else{
            var formdata=new FormData();
            formdata.append("file1",file1);
            formdata.append("file2",file2);
            if(!file1 || !file2){
                alert("error");
            }
        //     /**************************************************test******************need to delete******/
        //     var file=document.getElementById('fileToUpload_2').files[0];
        //     var url = window.URL.createObjectURL(file);
        //     //$('#img_content1').css({"margin":"0 auto","text-align":"center"});
        //     //$('#img_content1').src=url;
        //     $('#img_content2').css({"display":"none"});
        //     $('#img_content1').css({"display":"none"});
        //     $('#img_content3').css({"display":"inline"});
        //     document.getElementById('source_img_3').src=url;
        //     $('#upload_btn').css({"display":"none"});
        //    // $('#upload_btn').disabled=true;
        //     $('#download_btn').css({"display":"inline"});

            /***********************************test***********************need to delete***************/
            //使用ajax上传图片
            $.ajax({
                    type:"POST",
                    url :basePath+'userPhotoUpload',
                   // mimeType : 'multipart/form-data',
                    data:formdata,
                    contentType:false,
                    processData:false,
                    success:function(data){
                        // 隐藏原有图片信息
                        $("#text_upload").val("Transfered Seccussfully");
                        $('#img_content2').css({"display":"none"});
                        $('#img_content1').css({"display":"none"});
                        $('#img_content3').css({"display":"inline"});
                        //隐藏并且禁用uploda_btn
                        $('#upload_btn').css({"display":"none"});
                        $('#upload_btn').addClass('disabled');
                        $('#upload_btn').prop('disabled',true);
                        //显示并允许使用
                        //$('#download_btn').css({"display":"inline"});
                        var str=data;
                        $('#source_img_3').attr("src",data);
                        console.log(data);
                    },
                    error:function(){
                        alert("图片上传错误,请重新上传");
                        $('#upload_btn').prop('disabled',false);
                    }
                }
            );
        }
    }
}

//显示图片上传的进度
function uploadProgress(evt) {
    if (evt.lengthComputable) {
        var percentComplete = Math.round(evt.loaded * 100 / evt.total);
        document.getElementById('progressNumber').innerHTML = percentComplete.toString() + '%';
    } else {
        document.getElementById('progressNumber').innerHTML = 'unable to compute';
    }
}
/* 服务器端返回响应时候触发event事件*/
function uploadComplete(evt) {
    alert(evt.target.responseText);
}
//图片上传的错误提示
function uploadFailed(evt) {
    alert("There was an error attempting to upload the file.");
}

function download(){

}

