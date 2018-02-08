package com.demacia.domain;

/**
 * Created by songshiwen on 18/2/7.
 */
public class Department {
    private int id ,chiefId;
    private String name;

    @Override
    public String toString() {
        return "Department{" +
                "id=" + id +
                ", chiefId=" + chiefId +
                ", name='" + name + '\'' +
                '}';
    }

    public Department() {
    }

    public Department(int chiefId, String name) {

        this.chiefId = chiefId;
        this.name = name;
    }

    public int getId() {

        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getChiefId() {
        return chiefId;
    }

    public void setChiefId(int chiefId) {
        this.chiefId = chiefId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
