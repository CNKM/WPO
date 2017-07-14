package Comm;

/**
 * Created by k on 17-7-14.
 */
public class ActionReturn {

    public Integer getActionReuslt() {
        return ActionReuslt;
    }

    public void setActionReuslt(Integer actionReuslt) {
        ActionReuslt = actionReuslt;
    }

    private Integer ActionReuslt=0;


    public String getActionMsg() {
        return ActionMsg;
    }

    public void setActionMsg(String actionMsg) {
        ActionMsg = actionMsg;
    }

    private String ActionMsg="";

    public ActionReturn(Integer actionReuslt, String actionMsg) {
        ActionReuslt = actionReuslt;
        ActionMsg = actionMsg;
    }

    @Override
    public String toString() {
        return CommHelper.toJsonString(this);
    }
}