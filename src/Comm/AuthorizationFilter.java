package Comm;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by k on 17-7-15.
 */
@WebFilter(filterName = "AuthorizationFilter")
public class AuthorizationFilter implements Filter {
    @Override
    public void init(FilterConfig arg0) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest)arg0;
        HttpServletResponse response = (HttpServletResponse)arg1;
        HttpSession session = request.getSession();

        if(session.getAttribute("UserInfo") == null) {
            response.setHeader("Content-type", "text/html;charset=UTF-8");
            response.setCharacterEncoding("UTF-8");
            PrintWriter out = response.getWriter();
            out.print("<script>alert('您还没有登录，请登录...'); window.location='"+CommHelper.getServerRootPath(request)+"login.jsp' </script>");
            out.flush();
            out.close();
        } else {
            arg2.doFilter(request, response);
        }
    }

    @Override
    public void destroy() {
    }
}
