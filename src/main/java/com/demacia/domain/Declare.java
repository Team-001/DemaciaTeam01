package com.demacia.domain;

/**
 * Created by dllo on 18/3/5.
 */
public class Declare {
    private int id;
    private String name;

    @Override
    public String toString() {
        return "Declare{" +
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

    public Declare() {

    }

    public Declare(String name) {

        this.name = name;
    }
}
