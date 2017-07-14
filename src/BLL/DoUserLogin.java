package BLL;

import Comm.ActionReturn;
import Comm.BaseServlet;
import Comm.CommHelper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by k on 17-7-14.
 */
@WebServlet(name = "DoUserLogin")
public class DoUserLogin extends BaseServlet {
    private void ToFail(HttpServletResponse res) throws IOException {
        CommHelper.toResponseStr(res,new ActionReturn(0,"登录失败").toString());
    }
    private void ToSuccess(HttpServletResponse res) throws IOException {
        CommHelper.toResponseStr(res,new ActionReturn(0,"登陆成功").toString());
    }
    @Override
    public void doAction(HttpServletRequest req, HttpServletResponse res) throws IOException {
        //super.doAction(req, res);
        String Uname = CommHelper.getRequestParmeValue(req,"u");
        String Upwd =CommHelper.getRequestParmeValue(req,"p");
        if(CommHelper.isNullorEmpty(Uname)) {
            ToFail(res);
            return;
        }
        if(CommHelper.isNullorEmpty(Upwd)) {
            ToFail(res);
            return;
        }

        if(Uname.equals("admin")&&(Upwd.equals("admin")))
        {
            CommHelper.setSessionValue(req,"IsLogined",true);
            CommHelper.setSessionValue(req,"UserInfo",Uname);
            res.sendRedirect(CommHelper.getFuncRoot()+"index.jsp");
            ToSuccess(res);
        }else
        {
            ToFail(res);
        }


    }


}
