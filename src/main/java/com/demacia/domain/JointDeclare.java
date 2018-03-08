package com.demacia.domain;

/**
 * Created by dllo on 18/3/5.
 */
public class JointDeclare {
    private int id;
    private String name;

    @Override
    public String toString() {
        return "JointDeclareService{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
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

    public JointDeclare() {

    }

    public JointDeclare(String name) {

        this.name = name;
    }
}
