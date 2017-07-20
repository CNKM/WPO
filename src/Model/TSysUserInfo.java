package Model;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "T_SYS_UserInfo", schema = "WPO", catalog = "")
public class TSysUserInfo {
    private String fId;
    private String fLoginName;
    private String fUserName;
    private String fPassWord;
    private String fCreator;
    private Timestamp fCreatTime;
    private String fUpdater;
    private Timestamp fUpdateTime;
    private Timestamp fLastLoginTime;

    @Id
    @Column(name = "F_ID", nullable = false, length = 36)
    public String getfId() {
        return fId;
    }

    public void setfId(String fId) {
        this.fId = fId;
    }

    @Basic
    @Column(name = "F_LoginName", nullable = true, length = 45)
    public String getfLoginName() {
        return fLoginName;
    }

    public void setfLoginName(String fLoginName) {
        this.fLoginName = fLoginName;
    }

    @Basic
    @Column(name = "F_UserName", nullable = true, length = 45)
    public String getfUserName() {
        return fUserName;
    }

    public void setfUserName(String fUserName) {
        this.fUserName = fUserName;
    }

    @Basic
    @Column(name = "F_PassWord", nullable = true, length = 45)
    public String getfPassWord() {
        return fPassWord;
    }

    public void setfPassWord(String fPassWord) {
        this.fPassWord = fPassWord;
    }

    @Basic
    @Column(name = "F_Creator", nullable = true, length = 45)
    public String getfCreator() {
        return fCreator;
    }

    public void setfCreator(String fCreator) {
        this.fCreator = fCreator;
    }

    @Basic
    @Column(name = "F_CreatTime", nullable = true)
    public Timestamp getfCreatTime() {
        return fCreatTime;
    }

    public void setfCreatTime(Timestamp fCreatTime) {
        this.fCreatTime = fCreatTime;
    }

    @Basic
    @Column(name = "F_Updater", nullable = true, length = 45)
    public String getfUpdater() {
        return fUpdater;
    }

    public void setfUpdater(String fUpdater) {
        this.fUpdater = fUpdater;
    }

    @Basic
    @Column(name = "F_UpdateTime", nullable = true)
    public Timestamp getfUpdateTime() {
        return fUpdateTime;
    }

    public void setfUpdateTime(Timestamp fUpdateTime) {
        this.fUpdateTime = fUpdateTime;
    }

    @Basic
    @Column(name = "F_LastLoginTime", nullable = true)
    public Timestamp getfLastLoginTime() {
        return fLastLoginTime;
    }

    public void setfLastLoginTime(Timestamp fLastLoginTime) {
        this.fLastLoginTime = fLastLoginTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TSysUserInfo that = (TSysUserInfo) o;

        if (fId != null ? !fId.equals(that.fId) : that.fId != null) return false;
        if (fLoginName != null ? !fLoginName.equals(that.fLoginName) : that.fLoginName != null) return false;
        if (fUserName != null ? !fUserName.equals(that.fUserName) : that.fUserName != null) return false;
        if (fPassWord != null ? !fPassWord.equals(that.fPassWord) : that.fPassWord != null) return false;
        if (fCreator != null ? !fCreator.equals(that.fCreator) : that.fCreator != null) return false;
        if (fCreatTime != null ? !fCreatTime.equals(that.fCreatTime) : that.fCreatTime != null) return false;
        if (fUpdater != null ? !fUpdater.equals(that.fUpdater) : that.fUpdater != null) return false;
        if (fUpdateTime != null ? !fUpdateTime.equals(that.fUpdateTime) : that.fUpdateTime != null) return false;
        if (fLastLoginTime != null ? !fLastLoginTime.equals(that.fLastLoginTime) : that.fLastLoginTime != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = fId != null ? fId.hashCode() : 0;
        result = 31 * result + (fLoginName != null ? fLoginName.hashCode() : 0);
        result = 31 * result + (fUserName != null ? fUserName.hashCode() : 0);
        result = 31 * result + (fPassWord != null ? fPassWord.hashCode() : 0);
        result = 31 * result + (fCreator != null ? fCreator.hashCode() : 0);
        result = 31 * result + (fCreatTime != null ? fCreatTime.hashCode() : 0);
        result = 31 * result + (fUpdater != null ? fUpdater.hashCode() : 0);
        result = 31 * result + (fUpdateTime != null ? fUpdateTime.hashCode() : 0);
        result = 31 * result + (fLastLoginTime != null ? fLastLoginTime.hashCode() : 0);
        return result;
    }
}
