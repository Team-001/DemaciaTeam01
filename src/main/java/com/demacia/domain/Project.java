package com.demacia.domain;

import java.io.Serializable;

/**
 * Created by dllo on 18/3/1.
 */
public class Project implements Serializable{
    private String projId;
    private String projName, declared,jointDaclare,purpose,
    secure,reliability, economy,other,achievement,actual,
    potential,execution,content,resume,products, property,
    economic,fixed,acceptance,written,approval;
    private double general,company,financial,country;

    public Project() {
    }

    @Override
    public String toString() {
        return "Project{" +
                "projId='" + projId + '\'' +
                ", projName='" + projName + '\'' +
                ", declared='" + declared + '\'' +
                ", jointDaclare='" + jointDaclare + '\'' +
                ", purpose='" + purpose + '\'' +
                ", secure='" + secure + '\'' +
                ", reliability='" + reliability + '\'' +
                ", economy='" + economy + '\'' +
                ", other='" + other + '\'' +
                ", achievement='" + achievement + '\'' +
                ", actual='" + actual + '\'' +
                ", potential='" + potential + '\'' +
                ", execution='" + execution + '\'' +
                ", content='" + content + '\'' +
                ", resume='" + resume + '\'' +
                ", products='" + products + '\'' +
                ", property='" + property + '\'' +
                ", economic='" + economic + '\'' +
                ", fixed='" + fixed + '\'' +
                ", acceptance='" + acceptance + '\'' +
                ", written='" + written + '\'' +
                ", approval='" + approval + '\'' +
                ", general=" + general +
                ", company=" + company +
                ", financial=" + financial +
                ", country=" + country +
                '}';
    }

    public Project(String projName, String declare, String jointDaclare, String purpose, String secure, String reliability, String eoonomy, String other, String achievement, String actual, String potential, String execution, String content, String resume, String products, String proerty, String economic, String fixed, String acceptance, String written, String approval, double general, double company, double financial, double country) {
        this.projName = projName;
        this.declared = declare;
        this.jointDaclare = jointDaclare;
        this.purpose = purpose;
        this.secure = secure;
        this.reliability = reliability;
        this.economy = eoonomy;
        this.other = other;
        this.achievement = achievement;
        this.actual = actual;
        this.potential = potential;
        this.execution = execution;
        this.content = content;
        this.resume = resume;
        this.products = products;
        this.property = proerty;
        this.economic = economic;
        this.fixed = fixed;
        this.acceptance = acceptance;
        this.written = written;
        this.approval = approval;
        this.general = general;
        this.company = company;
        this.financial = financial;
        this.country = country;
    }

    public String getProjId() {
        return projId;
    }

    public void setProjId(String projId) {
        this.projId = projId;
    }

    public String getProjName() {
        return projName;
    }

    public void setProjName(String projName) {
        this.projName = projName;
    }

    public String getDeclared() {
        return declared;
    }

    public void setDeclared(String declared) {
        this.declared = declared;
    }

    public String getJointDaclare() {
        return jointDaclare;
    }

    public void setJointDaclare(String jointDaclare) {
        this.jointDaclare = jointDaclare;
    }

    public String getPurpose() {
        return purpose;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose;
    }

    public String getSecure() {
        return secure;
    }

    public void setSecure(String secure) {
        this.secure = secure;
    }

    public String getReliability() {
        return reliability;
    }

    public void setReliability(String reliability) {
        this.reliability = reliability;
    }

    public String getEconomy() {
        return economy;
    }

    public void setEconomy(String economy) {
        this.economy = economy;
    }

    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other;
    }

    public String getAchievement() {
        return achievement;
    }

    public void setAchievement(String achievement) {
        this.achievement = achievement;
    }

    public String getActual() {
        return actual;
    }

    public void setActual(String actual) {
        this.actual = actual;
    }

    public String getPotential() {
        return potential;
    }

    public void setPotential(String potential) {
        this.potential = potential;
    }

    public String getExecution() {
        return execution;
    }

    public void setExecution(String execution) {
        this.execution = execution;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getResume() {
        return resume;
    }

    public void setResume(String resume) {
        this.resume = resume;
    }

    public String getProducts() {
        return products;
    }

    public void setProducts(String products) {
        this.products = products;
    }

    public String getProperty() {
        return property;
    }

    public void setProperty(String property) {
        this.property = property;
    }

    public String getEconomic() {
        return economic;
    }

    public void setEconomic(String economic) {
        this.economic = economic;
    }

    public String getFixed() {
        return fixed;
    }

    public void setFixed(String fixed) {
        this.fixed = fixed;
    }

    public String getAcceptance() {
        return acceptance;
    }

    public void setAcceptance(String acceptance) {
        this.acceptance = acceptance;
    }

    public String getWritten() {
        return written;
    }

    public void setWritten(String written) {
        this.written = written;
    }

    public String getApproval() {
        return approval;
    }

    public void setApproval(String approval) {
        this.approval = approval;
    }

    public double getGeneral() {
        return general;
    }

    public void setGeneral(double general) {
        this.general = general;
    }

    public double getCompany() {
        return company;
    }

    public void setCompany(double company) {
        this.company = company;
    }

    public double getFinancial() {
        return financial;
    }

    public void setFinancial(double financial) {
        this.financial = financial;
    }

    public double getCountry() {
        return country;
    }

    public void setCountry(double country) {
        this.country = country;
    }
}
