<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>login</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        html {
            height: 100%;
            width: 100%;
            overflow: hidden;
            margin: 0;
            padding: 0;
            background: url(background.png) no-repeat 0px 0px;
            background-repeat: no-repeat;
            background-size: 100% 100%;
            -moz-background-size: 100% 100%;
        }

        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100%;
        }

        #loginDiv {
            width: 400px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 400px;
            background-color: rgba(75, 81, 95, 0.3);
            box-shadow: 7px 7px 17px rgba(52, 56, 66, 0.5);
            border-radius: 250px;
        }


        p {
            margin-top: 30px;
            margin-left: 20px;
            color: azure;
        }

        input {
            margin-left: 15px;
            border-radius: 5px;
            border-style: hidden;
            height: 30px;
            width: 140px;
            background-color: rgba(216, 191, 216, 0.5);
            outline: none;
            color: #f0edf3;
            padding-left: 10px;
        }

        .button {
            border-color: cornsilk;
            background-color: rgba(100, 149, 237, .7);
            color: aliceblue;
            border-style: hidden;
            border-radius: 5px;
            width: 100px;
            height: 31px;
            font-size: 16px;
        }
    </style>
    <style type="text/css">
        input::-ms-input-placeholder {
            text-align: center;
        }

        input::-webkit-input-placeholder {
            text-align: center;
        }
    </style>
</head>

<body>

<div id="loginDiv">
    <form action="dologin.jsp" id="form" method="post">
        <h1 style="text-align: center;color: aliceblue;">登录izhao团队</h1>
        <p>姓名:<input name="uname" type="text"></p>
        <p>密码:<input name="upwd" type="password" placeholder="输入口号izhaonb" ></p>
        <p style="text-align: center;color: darkgray;"><a href="#">点我加入izhao团队！！！</a></p>
        <div style="text-align: center;margin-top: 30px;">
            <input type="submit" class="button" value="登录">
            <input type="button" class="button" value="注册"  onclick="javascript:location.href='register.jsp'">
        </div>
    </form>
    <div id="Layer1" style="position:absolute; width:100%; height:100%; background-color: snow; z-index:-1">
        <img src="img\izhao.jpg" height="100%" width="100%" />
<%--        <script>--%>

<%--            //获取注册时存储在localStorage中的值--%>
<%--            //var sex = localStorage.getItem("sex");--%>

<%--            //var email = 'izhao';--%>
<%--            var username1 = localStorage.getItem("username");--%>
<%--            var password1 = localStorage.getItem("password");--%>
<%--            //注册按钮跳转--%>


<%--            //判断登录是否成功--%>
<%--            function login_click() {--%>
<%--                //获取用户输入的信息--%>
<%--                var username1 = document.getElementById("username").value;--%>
<%--                var password1 = document.getElementById("password").value;--%>

<%--                //判断输入的信息和注册的信息是否一致--%>
<%--                if (username1 != '' && password1 != '') {--%>
<%--                    if (password1 == 'izhaonb') {--%>
<%--                        window.location.href = 'izhao.html';--%>
<%--                    }--%>
<%--                    else {--%>
<%--                        alert("你不是真的izhao！快点加入我们的izhao团队");--%>
<%--                    }--%>
<%--                }--%>

<%--            }--%>
<%--        </script>--%>
    </div>
</div>
</body>

</html>
