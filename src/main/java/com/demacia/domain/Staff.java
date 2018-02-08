package com.demacia.domain;

/**
 * Created by songshiwen on 18/2/5.
 */
public class Staff {

    private int id;
    private String name,email,username,pwd;
    private Department department;

    public Staff(String name, String username) {
        this.name = name;
        this.username = username;
    }

    @Override
    public String toString() {
        return "Staff{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", username='" + username + '\'' +
                ", pwd='" + pwd + '\'' +
                '}';
    }

    public Staff() {
    }

    public Staff(String name, String email, String username, String pwd) {

        this.name = name;
        this.email = email;
        this.username = username;
        this.pwd = pwd;
    }

    public int getId() {

        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }
}
