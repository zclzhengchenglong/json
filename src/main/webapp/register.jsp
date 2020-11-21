<%@page language="java" pageEncoding="utf-8" %>
<html>
<head>

    <!--引入js文件khhjkjkj-->
    <script type="text/javascript" src="js/prototype.js"></script>

    <script type="text/javascript" >
        function checkuname() {
            var uname=document.getElementById("uname").value;
            var url="CheckUname?uname="+uname;
            console.log(url);

            //使用prototype提供的ajax异步请求servlet
            new Ajax.Request(url,{method:"post",onComplete:ok});
        }

        function ok(resp) {
            var result=resp.responseText;  //获取字符串结果efrgthjkjhgf
            //字符串转json
            var j=JSON.parse(result);
            if (j.msg=="yes"){//已存在
                document.getElementById("sp").style.color="red";
                document.getElementById("sp").innerHTML="该用户名已存在"
            } else {
                document.getElementById("sp").style.color="green";
                document.getElementById("sp").innerHTML="该用户名可使用"
            }
        }

    </script>

</head>

<body>
    <form>
        用户名：<input type="text" name="uname" id="uname" onblur="checkuname()">
        <span id="sp" style="color: red"></span>
    </form>
</body>
</html>
