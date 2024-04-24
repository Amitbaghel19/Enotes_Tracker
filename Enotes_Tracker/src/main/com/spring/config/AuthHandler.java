package com.spring.config;

import com.spring.entity.User;
import jakarta.servlet.http.HttpSession;
import org.springframework.web.servlet.HandlerInterceptor;

public class AuthHandler implements HandlerInterceptor {
    @Override
    public boolean preHandle(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response, Object handler) throws Exception {
//        HttpSession session = request.getSession();
        User user = (User)request.getSession().getAttribute("userObj");
        if(user!=null) {
          return true;
      }
      else {
          response.getWriter().print("<h1>please login</h1>");
          return false;
      }
    }
}
