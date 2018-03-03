package com.demacia.domain;

import java.util.Date;

/**
 * Created by dllo on 18/2/28.
 */
public class Mission {
    private int mid,right;
    private String mName,department,stage,applicant;
    private String applyDate,print;

    public Mission(int right, String mName, String department, String stage, String applicant, String applyDate,String print) {
        this.right = right;
        this.mName = mName;
        this.department = department;
        this.stage = stage;
        this.applicant = applicant;
        this.applyDate = applyDate;
        this.print=print;
    }

    public Mission() {

    }

    @Override
    public String toString() {
        return "Mission{" +
                "mid=" + mid +
                ", right=" + right +
                ", mName='" + mName + '\'' +
                ", department='" + department + '\'' +
                ", stage='" + stage + '\'' +
                ", applicant='" + applicant + '\'' +
                ", applyDate='" + applyDate + '\'' +
                ", print='" + print + '\'' +
                '}';
    }

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public int getRight() {
        return right;
    }

    public void setRight(int right) {
        this.right = right;
    }

    public String getmName() {
        return mName;
    }

    public void setmName(String mName) {
        this.mName = mName;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getStage() {
        return stage;
    }

    public void setStage(String stage) {
        this.stage = stage;
    }

    public String getApplicant() {
        return applicant;
    }

    public void setApplicant(String applicant) {
        this.applicant = applicant;
    }

    public String getApplyDate() {
        return applyDate;
    }

    public void setApplyDate(String applyDate) {
        this.applyDate = applyDate;
    }

    public String getPrint() {
        return print;
    }

    public void setPrint(String print) {
        this.print = print;
    }
}
