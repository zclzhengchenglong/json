<%@page language="java" pageEncoding="utf-8"
        isELIgnored="false" %>

<html>
<body>

    <center>

        <h1>我的主页</h1>
        <h2>
            欢迎，
            ${empty sessionScope.nowuser ?
             "游客":sessionScope.nowuser.userName}
            ，来到我的主页1！
        </h2>

        <a href="userinfoctrl/test.do">测试用户登录拦截</a>

        <br>
        <h2>上传功能</h2>
        <form action="userinfoctrl/upload.do" method="post"
              enctype="multipart/form-data">
            图片：<input type="file" name="upload">
            <input type="submit" value="提交">
        </form>

        <br><br>
        <a href="userinfoctrl/selectpage.do">用户列表-分页</a>

    </center>

</body>
</html>
