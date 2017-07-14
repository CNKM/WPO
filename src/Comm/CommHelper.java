package Comm;


import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.ObjectMapper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

public class CommHelper {

    /*
     字符串处理
     */
    public static Boolean isNullorEmpty(String str) {
        return str == null || str.trim().length() == 0;
    }


    /*
    JSON 序列化处理
    * */
    public static ObjectMapper JacksonOM;

    static {
        JacksonOM = new ObjectMapper() {
        };
        JacksonOM.configure(DeserializationConfig.Feature.READ_ENUMS_USING_TO_STRING, true);
    }

    public static String toJsonString(Object ToJsonStringObject) {
        try {
            return JacksonOM.writeValueAsString(ToJsonStringObject);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "error from object to json  string!";
    }


    public static String getRequestParmeValue(HttpServletRequest req, String StrParmeName) {
        return req.getParameter(StrParmeName);
    }


    public static void toResponseStr(HttpServletResponse res, String StrValue) throws IOException {
        res.setHeader("Content-type", "text/html;charset=UTF-8");
        res.getWriter().write(StrValue);
    }

    public static void setSessionValue(HttpServletRequest req, String PName, Object Palue) {
        req.getSession().setAttribute(PName, Palue);
    }

    public static Object GetSessionValue(HttpServletRequest req, String PName) {
        return req.getSession().getAttribute(PName);
    }

    public static void RemoveSessionValue(HttpServletRequest req, String PName) {
        req.getSession().removeAttribute(PName);
    }

    public static void ClearSession(HttpServletRequest req) {
        req.getSession().setMaxInactiveInterval(0);
    }

    /*
    获取服务器属性
     */
    private static String ServerRootPath;

    public static String getServerRootPath(HttpServletRequest request) {
        if(isNullorEmpty(ServerRootPath)) {
            ServerRootPath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
        }
        return ServerRootPath;
    }

    public static String getFuncRoot() {
    return  ServerRootPath+"Views/";

}

    public static void setServerRootPath(java.lang.String serverRootPath) {
        ServerRootPath = serverRootPath;
    }


}


