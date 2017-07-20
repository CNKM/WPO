package BLL;

import Comm.*;
import Model.TSysUserInfo;
import org.hibernate.Session;
import org.hibernate.query.Query;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by k on 17-7-14.
 */
@WebServlet(name = "DoUserLogin")
public class DoUserLogin extends BaseServlet {
    private void ToFail(HttpServletResponse res) throws IOException {
        CommHelper.toResponseStr(res, new ActionReturn(0, "登录失败").toString());
    }

    private void ToSuccess(HttpServletResponse res) throws IOException {
        CommHelper.toResponseStr(res, new ActionReturn(0, "登陆成功").toString());
    }

    @Override
    public void doAction(HttpServletRequest req, HttpServletResponse res) throws IOException {
        //super.doAction(req, res);
        String Uname = CommHelper.getRequestParmeValue(req, "u");
        String Upwd = CommHelper.getRequestParmeValue(req, "p");
        if (CommHelper.isNullorEmpty(Uname)) {
            ToFail(res);
            return;
        }
        if (CommHelper.isNullorEmpty(Upwd)) {
            ToFail(res);
            return;
        }
        Session session = HibernateUtils.getSession();
        String SqlString = "From TSysUserInfo TU where TU.fLoginName='"+Uname+"' AND TU.fPassWord='"+Upwd+"'";
        Query query= session.createQuery(SqlString);
        List<TSysUserInfo>Lt= query.list();




        /*ResultSet rs= SqlHelper.executeQuery("Select Count(*) From T_SYS_UserInfo Where F_LoginName=? And F_PassWord=?",new String[]{Uname,Upwd});*/

        if (1 == Lt.size()) {
            CommHelper.setSessionValue(req, "UserInfo", Uname);
            res.sendRedirect(CommHelper.getFuncRoot() + "index.jsp");
            ToSuccess(res);
        } else {
            ToFail(res);
        }


    }


}
