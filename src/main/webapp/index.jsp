<%@page language="java" pageEncoding="utf-8" %>
<html>
<head>

    <script type="text/javascript">
            function showJson() {
                var user={
                    "username":"tom",
                    "age":20,
                    "info":{"tel":"123","phone":"567"},
                    "adress":[
                        {"city":"beijin","post":"222222"},
                        {"city":"xiangfan","post":"333333"}
                    ]
                }
                alert(user.username);
                alert(user.age);
                alert(user.adress[0].city);

                user.age=22;
                alert(user.age);

                //json对象转字符串
                alert(user);
                var str=JSON.stringify(user);
                alert(str);

                //字符串转json
                var  s='{"name":"张三","sex":"nan"}';
                alert(s.name);
                var l=JSON.parse(s);
                alert(l.name);
            }
    </script>

</head>

<body>
    <button onclick="showJson()">测试一</button>
</body>
</html>
