<%@page language="java" pageEncoding="utf-8"
        isELIgnored="false"%>

<html>
<body>

    <center>

        <h1>用户登录</h1>
        <h2 style="color: red">
            ${param.isfail=="yes" ? "用户名或密码错误！":""}
            ${param.islogin=="no" ? "您未登录，请先登录！":""}
        </h2>
               <!--控制器类的请求映射url/类中方法的请求映射url-->
        <form action="loginctrl/login.do" method="post">
            用户名：<input type="text" name="userName"
                       placeholder="请输入用户名">
            <br><br>
            密码：<input type="password" name="userPassword"
                      placeholder="请输入密码">
            <br><br>
            <input type="submit" value="登录">
        </form>

    </center>

</body>
</html>
