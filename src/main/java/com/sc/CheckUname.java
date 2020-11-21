package com.sc;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * 类名：${NAME}
 * 描述：一段话描述类的信息
 * 作者“郑成龙
 * 日期：2020/11/4 20:40
 * 版本：V1.0
 */
@javax.servlet.annotation.WebServlet(name = "CheckUname",urlPatterns = "/CheckUname")
public class CheckUname extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        String uname=request.getParameter("uname");
        System.out.println("用户名："+uname);

        String result=null;
        if (uname!=null&&uname.equals("admin")){
            //该用户名存在
            result="{\"code\":100,\"msg\":\"yes\"}";
        }else {
            //该用户名不存在
            result="{\"code\":200,\"msg\":\"no\"}";
        }
            System.out.println(result);

        //响应
        PrintWriter out=response.getWriter();
        out.println(result);
        out.close();
    }
}
