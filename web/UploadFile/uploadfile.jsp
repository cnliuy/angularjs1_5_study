<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

  <head>
    <title>Angular 1.5 Upload</title>
    <meta charset="utf-8">

  </head>



  <body ng-app="myApp" class="ng-scope">
    <script src="${ctx}/js/angular1.5.0/angular.min.js"></script>
    <script src="${ctx}/UploadFile/upload.js"></script>


    示例链接1：<br>
    &nbsp;<a href="https://jsfiddle.net/JeJenny/ZG9re/" target="_blank">
      https://jsfiddle.net/JeJenny/ZG9re/
    </a><br>

    示例链接2：AngularJS - Upload File<br>
    &nbsp;<a href="http://www.tutorialspoint.com/angularjs/angularjs_upload_file.htm" target="_blank">
      http://www.tutorialspoint.com/angularjs/angularjs_upload_file.htm
    </a><br>
    <br><br>
    Java Servlet 参考页面：<br>
    &nbsp;Servlet实现文件上传的几种方法<br>
    &nbsp;<a href="http://my.oschina.net/Barudisshu/blog/150026" target="_blank">
      http://my.oschina.net/Barudisshu/blog/150026
    </a><br>
    <br><br>

    代码部分：
    <br><br>
    <div ng-controller = "myCtrl">
      <input type="file" file-model="myFile"/>
      <button ng-click="uploadFile()">上传</button>
    </div>

  </body>

</html>
