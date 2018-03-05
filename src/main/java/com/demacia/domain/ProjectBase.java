package com.demacia.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by dllo on 18/2/28.
 */
public class ProjectBase implements Serializable{
    private int projId;
    private String projName,projType,org,orgName,
    uniteOrg,uniteOrgName;
    private double cycle,totalBudget;
    private String purpose,safeDesc,reliableDesc,
    econDesc,otherDesc,achieveMentDesc,realUser,
    potentialUser,content,primeStaff,primeUser,
    rightDesc,benefitsDesc,fixedAssets,acceptStand,
    engineerEvaluate,accordEvaluate,applicationEvaluate,
    totalEvaluate,pmsRequire,advice,effectFlag,staff,
    staffName;
    private String createDate;

    @Override
    public String toString() {
        return "ProjectBase{" +
                "projId=" + projId +
                ", projName='" + projName + '\'' +
                ", projType='" + projType + '\'' +
                ", org='" + org + '\'' +
                ", orgName='" + orgName + '\'' +
                ", uniteOrg='" + uniteOrg + '\'' +
                ", uniteOrgName='" + uniteOrgName + '\'' +
                ", cycle=" + cycle +
                ", totalBudget=" + totalBudget +
                ", purpose='" + purpose + '\'' +
                ", safeDesc='" + safeDesc + '\'' +
                ", reliableDesc='" + reliableDesc + '\'' +
                ", econDesc='" + econDesc + '\'' +
                ", otherDesc='" + otherDesc + '\'' +
                ", achieveMentDesc='" + achieveMentDesc + '\'' +
                ", realUser='" + realUser + '\'' +
                ", potentialUser='" + potentialUser + '\'' +
                ", content='" + content + '\'' +
                ", primeStaff='" + primeStaff + '\'' +
                ", primeUser='" + primeUser + '\'' +
                ", rightDesc='" + rightDesc + '\'' +
                ", benefitsDesc='" + benefitsDesc + '\'' +
                ", fixedAssets='" + fixedAssets + '\'' +
                ", acceptStand='" + acceptStand + '\'' +
                ", engineerEvaluate='" + engineerEvaluate + '\'' +
                ", accordEvaluate='" + accordEvaluate + '\'' +
                ", applicationEvaluate='" + applicationEvaluate + '\'' +
                ", totalEvaluate='" + totalEvaluate + '\'' +
                ", pmsRequire='" + pmsRequire + '\'' +
                ", advice='" + advice + '\'' +
                ", effectFlag='" + effectFlag + '\'' +
                ", staff='" + staff + '\'' +
                ", staffName='" + staffName + '\'' +
                ", createDate=" + createDate +
                '}';
    }

    public ProjectBase(int projId, String projName, String projType, String org, String orgName, String uniteOrg, String uniteOrgName, double cycle, double totalBudget, String purpose, String safeDesc, String reliableDesc, String econDesc, String otherDesc, String achieveMentDesc, String realUser, String potentialUser, String content, String primeStaff, String primeUser, String rightDesc, String benefitsDesc, String fixedAssets, String acceptStand, String engineerEvaluate, String accordEvaluate, String applicationEvaluate, String totalEvaluate, String pmsRequire, String advice, String effectFlag, String staff, String staffName, String createDate) {
        this.projId = projId;
        this.projName = projName;
        this.projType = projType;
        this.org = org;
        this.orgName = orgName;
        this.uniteOrg = uniteOrg;
        this.uniteOrgName = uniteOrgName;
        this.cycle = cycle;
        this.totalBudget = totalBudget;
        this.purpose = purpose;
        this.safeDesc = safeDesc;
        this.reliableDesc = reliableDesc;
        this.econDesc = econDesc;
        this.otherDesc = otherDesc;
        this.achieveMentDesc = achieveMentDesc;
        this.realUser = realUser;
        this.potentialUser = potentialUser;
        this.content = content;
        this.primeStaff = primeStaff;
        this.primeUser = primeUser;
        this.rightDesc = rightDesc;
        this.benefitsDesc = benefitsDesc;
        this.fixedAssets = fixedAssets;
        this.acceptStand = acceptStand;
        this.engineerEvaluate = engineerEvaluate;
        this.accordEvaluate = accordEvaluate;
        this.applicationEvaluate = applicationEvaluate;
        this.totalEvaluate = totalEvaluate;
        this.pmsRequire = pmsRequire;
        this.advice = advice;
        this.effectFlag = effectFlag;
        this.staff = staff;
        this.staffName = staffName;
        this.createDate = createDate;
    }

    public ProjectBase() {
    }

    public int getProjId() {
        return projId;
    }

    public void setProjId(int projId) {
        this.projId = projId;
    }

    public String getProjName() {
        return projName;
    }

    public void setProjName(String projName) {
        this.projName = projName;
    }

    public String getProjType() {
        return projType;
    }

    public void setProjType(String projType) {
        this.projType = projType;
    }

    public String getOrg() {
        return org;
    }

    public void setOrg(String org) {
        this.org = org;
    }

    public String getOrgName() {
        return orgName;
    }

    public void setOrgName(String orgName) {
        this.orgName = orgName;
    }

    public String getUniteOrg() {
        return uniteOrg;
    }

    public void setUniteOrg(String uniteOrg) {
        this.uniteOrg = uniteOrg;
    }

    public String getUniteOrgName() {
        return uniteOrgName;
    }

    public void setUniteOrgName(String uniteOrgName) {
        this.uniteOrgName = uniteOrgName;
    }

    public double getCycle() {
        return cycle;
    }

    public void setCycle(double cycle) {
        this.cycle = cycle;
    }

    public double getTotalBudget() {
        return totalBudget;
    }

    public void setTotalBudget(double totalBudget) {
        this.totalBudget = totalBudget;
    }

    public String getPurpose() {
        return purpose;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose;
    }

    public String getSafeDesc() {
        return safeDesc;
    }

    public void setSafeDesc(String safeDesc) {
        this.safeDesc = safeDesc;
    }

    public String getReliableDesc() {
        return reliableDesc;
    }

    public void setReliableDesc(String reliableDesc) {
        this.reliableDesc = reliableDesc;
    }

    public String getEconDesc() {
        return econDesc;
    }

    public void setEconDesc(String econDesc) {
        this.econDesc = econDesc;
    }

    public String getOtherDesc() {
        return otherDesc;
    }

    public void setOtherDesc(String otherDesc) {
        this.otherDesc = otherDesc;
    }

    public String getAchieveMentDesc() {
        return achieveMentDesc;
    }

    public void setAchieveMentDesc(String achieveMentDesc) {
        this.achieveMentDesc = achieveMentDesc;
    }

    public String getRealUser() {
        return realUser;
    }

    public void setRealUser(String realUser) {
        this.realUser = realUser;
    }

    public String getPotentialUser() {
        return potentialUser;
    }

    public void setPotentialUser(String potentialUser) {
        this.potentialUser = potentialUser;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPrimeStaff() {
        return primeStaff;
    }

    public void setPrimeStaff(String primeStaff) {
        this.primeStaff = primeStaff;
    }

    public String getPrimeUser() {
        return primeUser;
    }

    public void setPrimeUser(String primeUser) {
        this.primeUser = primeUser;
    }

    public String getRightDesc() {
        return rightDesc;
    }

    public void setRightDesc(String rightDesc) {
        this.rightDesc = rightDesc;
    }

    public String getBenefitsDesc() {
        return benefitsDesc;
    }

    public void setBenefitsDesc(String benefitsDesc) {
        this.benefitsDesc = benefitsDesc;
    }

    public String getFixedAssets() {
        return fixedAssets;
    }

    public void setFixedAssets(String fixedAssets) {
        this.fixedAssets = fixedAssets;
    }

    public String getAcceptStand() {
        return acceptStand;
    }

    public void setAcceptStand(String acceptStand) {
        this.acceptStand = acceptStand;
    }

    public String getEngineerEvaluate() {
        return engineerEvaluate;
    }

    public void setEngineerEvaluate(String engineerEvaluate) {
        this.engineerEvaluate = engineerEvaluate;
    }

    public String getAccordEvaluate() {
        return accordEvaluate;
    }

    public void setAccordEvaluate(String accordEvaluate) {
        this.accordEvaluate = accordEvaluate;
    }

    public String getApplicationEvaluate() {
        return applicationEvaluate;
    }

    public void setApplicationEvaluate(String applicationEvaluate) {
        this.applicationEvaluate = applicationEvaluate;
    }

    public String getTotalEvaluate() {
        return totalEvaluate;
    }

    public void setTotalEvaluate(String totalEvaluate) {
        this.totalEvaluate = totalEvaluate;
    }

    public String getPmsRequire() {
        return pmsRequire;
    }

    public void setPmsRequire(String pmsRequire) {
        this.pmsRequire = pmsRequire;
    }

    public String getAdvice() {
        return advice;
    }

    public void setAdvice(String advice) {
        this.advice = advice;
    }

    public String getEffectFlag() {
        return effectFlag;
    }

    public void setEffectFlag(String effectFlag) {
        this.effectFlag = effectFlag;
    }

    public String getStaff() {
        return staff;
    }

    public void setStaff(String staff) {
        this.staff = staff;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }
}
