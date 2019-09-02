function file1Selected() {
    var file = document.getElementById('fileToUpload_1').files[0];
    if (file) {
        //显示选择的本地图片
        var url=window.URL.createObjectURL(file);
       // alert(url.toString());
       //document.getElementById('source_img_1').append('<img src="'+url+'"/>');
        document.getElementById('source_img_1').src=url;

       // var reader=new FileReader();
        //reader.onload=function(evt){
         //   document.getElementById('source_img_1').src=evt.target.result;
        //    source_img=evt.target.result;
        //};
        //reader.readAsDataURL(file.files[0]);
        //控制图片的大小和格式
        var fileSize=file.size;
        var fileType=file.type;
        alert(fileType);
        if(fileType !== 'image/'){
            alert("请选择正确的图片格式!")
        }else{
            if(fileSize>2*1024*1024){
                alert("图片大小不能超过2MB!");
            }
        }
        if (file.size > 1024 * 1024)
            fileSize_string = (Math.round(file.size * 100 / (1024 * 1024)) / 100).toString() + 'MB';
        else
            fileSize_string = (Math.round(file.size * 100 / 1024) / 100).toString() + 'KB';
        document.getElementById('fileName').innerHTML = 'Name: ' + file.name;
        document.getElementById('fileSize').innerHTML = 'Size: ' + fileSize_string;
    }
}

function file2Selected() {
    var file = document.getElementById('fileToUpload_2').files[0];
    if (file) {
        //显示图片
        var url = window.URL.createObjectURL(file);
        document.getElementById('source_img_2').src = url;
        //显示图片信息
        var fileSize = 0;
        if (file.size > 1024 * 1024)
            fileSize = (Math.round(file.size * 100 / (1024 * 1024)) / 100).toString() + 'MB';
        else
            fileSize = (Math.round(file.size * 100 / 1024) / 100).toString() + 'KB';
        document.getElementById('fileName').innerHTML = 'Name: ' + file.name;
        document.getElementById('fileSize').innerHTML = 'Size: ' + fileSize;
    }
}

function uploadFile() {
    var fd = new FormData();
    var file1=document.getElementById('fileToUpload_1').files[0];
    var file2=document.getElementById('fileToUpload_2').files[0];
    if(file1.name===file2.name){
        alert("两张图片不能相同,请重新选择")
    }
    else if(!file1 || !file2){
        alert("请选择两张图片")
    }
    else{
        fd.append("fileToUpload_1",file1);
        fd.append("fileToUpload_2",file2);
        var xhr = new XMLHttpRequest();
        xhr.upload.addEventListener("progress", uploadProgress, false);
        xhr.addEventListener("load", uploadComplete, false);
        xhr.addEventListener("error", uploadFailed, false);
        xhr.addEventListener("abort", uploadCanceled, false);
        xhr.open("POST", "upload.do"); //修改成自己的接口
        xhr.send(fd);
    }

}

function uploadProgress(evt) {
    if (evt.lengthComputable) {
        var percentComplete = Math.round(evt.loaded * 100 / evt.total);
        document.getElementById('progressNumber').innerHTML = percentComplete.toString() + '%';
    } else {
        document.getElementById('progressNumber').innerHTML = 'unable to compute';
    }
}

function uploadComplete(evt) {
    /* 服务器端返回响应时候触发event事件*/
    alert(evt.target.responseText);
}

function uploadFailed(evt) {
    alert("There was an error attempting to upload the file.");
}

function uploadCanceled(evt) {
    alert("The upload has been canceled by the user or the browser dropped the connection.");
}

function getFile(){
    var xhr=new XMLHttpRequest();
    //url 未填
    xhr.open("GET","47.92.141.59/test/png/test.png",true);

    xhr.responseType="blob";

    xhr.onload=function(){
        if(this.status===200){
            alert("success!");
            var blob=this.response;
            var img=document.createElement("img");
            img.onload=function(e) {
                window.URL.revokeObjectURL(img.src);
                document.body.appendChild(img);
            }
        }
        else {
            alert("error!");
        }
    };
    xhr.send();
}