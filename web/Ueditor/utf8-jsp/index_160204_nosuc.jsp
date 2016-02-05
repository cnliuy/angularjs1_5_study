<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="formSubmit">
<head>
    <title>AngularJS 百度Ueditor 整合demo</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <script type="text/javascript" charset="utf-8" src="${ctx}/Ueditor/utf8-jsp/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="${ctx}/Ueditor/utf8-jsp/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="${ctx}/Ueditor/utf8-jsp/lang/zh-cn/zh-cn.js"></script>


    <script type="text/javascript" charset="utf-8" src="${ctx}/Ueditor/angular-ueditor.js"> </script>

    <style type="text/css">
        div{
            width:100%;
        }
    </style>
</head>
<body >


    <!-- liuy add start Angular-->
    <script src="${ctx}/js/angular1.5.0/angular.min.js"></script>
    <script type="text/javascript">
        var c ;

        function getContent() {
            var arr = [];
            arr.push("使用editor.getContent()方法可以获得编辑器的内容");
            arr.push("内容为：");
            c = UE.getEditor('editor').getContent();
            arr.push(c);
            alert(arr.join("\n"));
            alert("getContent() c:"+c);
        }


        var app = angular.module('formSubmit', []);
        app.controller('FormSubmitController',[ '$scope', '$http', function($scope, $http) {
            alert("c2:"+c);
            var formData  = c ;
            alert( "1--" + formData);
            //---------- mark 2 ok start ------------
            var response = $http.post('${ctx}/postform', formData);
            response.success(function(data, status, headers, config) {
                 $scope.list.push(data);
            });
            response.error(function(data, status, headers, config) {
                 alert( "Exception details: " + JSON.stringify({data: data}));
            });
        }]);
    </script>



    <!-- liuy add stop Angular-->

<div>
    <h1>AngularJS Ueditor Demo</h1>
    <script id="editor" type="text/plain" style="width:1024px;height:500px;"></script>
</div>
    <br><br>
<div id="btns">
    <div>
        <button onclick="getAllHtml()">获得整个html的内容</button>

        <button onclick="getContent()">获得内容</button>
    </div>
</div>
    <br><br>

<div >
    <form data-ng-submit="submit()" data-ng-controller="FormSubmitController">
        <input type="submit" id="submit" value="提交内容" />
    </form>
</div>
    <br><br>


<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');


    function isFocus(e){
        alert(UE.getEditor('editor').isFocus());
        UE.dom.domUtils.preventDefault(e)
    }
    function setblur(e){
        UE.getEditor('editor').blur();
        UE.dom.domUtils.preventDefault(e)
    }

    function getAllHtml() {
        alert(UE.getEditor('editor').getAllHtml())
    }
//    function getContent() {
//        var arr = [];
//        arr.push("使用editor.getContent()方法可以获得编辑器的内容");
//        arr.push("内容为：");
//        var ucontent = UE.getEditor('editor').getContent();
//        arr.push(ucontent);
//        alert(arr.join("\n"));
//
//        postContent(ucontent);
//    }
    function getPlainTxt() {
        var arr = [];
        arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getPlainTxt());
        alert(arr.join('\n'))
    }

    function setFocus() {
        UE.getEditor('editor').focus();
    }

    function enableBtn() {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
        }
    }

    function getLocalData () {
        alert(UE.getEditor('editor').execCommand( "getlocaldata" ));
    }

    function clearLocalData () {
        UE.getEditor('editor').execCommand( "clearlocaldata" );
        alert("已清空草稿箱")
    }
</script>
</body>
</html>