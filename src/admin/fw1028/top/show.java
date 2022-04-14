package admin.fw1028.top;

import java.util.Arrays;

/**
 * @author FangWei
 */
public class show {
    private String name;
    private String password;
    private String gender;
    private String age;
    private String[] hobby;

    public void setName(String name) {
        this.name = name;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public void setHobby(String[] hobby) {
        this.hobby = hobby;
    }

    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }

    public String getGender() {
        return gender;
    }

    public String getAge() {
        return age;
    }

    public String[] getHobby() {
        return hobby;
    }

    public show(String name, String password, String gender, String age, String[] hobby) {
        this.name = name;
        this.password = password;
        this.gender = gender;
        this.age = age;
        this.hobby = hobby;
    }

    public show() {

    }

    @Override
    public String toString() {
        return "show{" +
                "name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", gender='" + gender + '\'' +
                ", age='" + age + '\'' +
                ", hobby='" + Arrays.toString(hobby) + '\'' +
                '}';
    }
}
