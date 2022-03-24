package admin.fw1028.top;

/**
 * @author FangWei
 */
public class stuBean {
    private String id;
    private String name;
    private String major;
    private String grade;
    private Boolean flag;

    public stuBean() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public Boolean isFlag() {
        return flag;
    }

    public void setFlag(Boolean flag) {
        this.flag = flag;
    }

    public stuBean(String id, String name, String major, String grade, Boolean flag) {
        this.id = id;
        this.name = name;
        this.major = major;
        this.grade = grade;
        this.flag = flag;
    }

    @Override
    public String toString() {
        return "stuBean{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", major='" + major + '\'' +
                ", grade='" + grade + '\'' +
                ", flag=" + flag +
                '}';
    }
}
