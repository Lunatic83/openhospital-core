ALTER TABLE ADMISSION 
  ADD COLUMN ADM_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER ADM_DELETED, 
  ADD COLUMN ADM_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN ADM_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN ADM_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN ADM_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE ADMISSIONTYPE 
  ADD COLUMN ADMT_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER ADMT_DESC, 
  ADD COLUMN ADMT_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN ADMT_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN ADMT_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN ADMT_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE AGETYPE 
  ADD COLUMN AT_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER AT_DESC, 
  ADD COLUMN AT_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN AT_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN AT_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN AT_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE BILLITEMS 
  ADD COLUMN BLI_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER BLI_QTY, 
  ADD COLUMN BLI_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN BLI_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN BLI_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN BLI_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE BILLPAYMENTS 
  ADD COLUMN BLP_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER BLP_USR_ID_A, 
  ADD COLUMN BLP_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN BLP_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN BLP_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN BLP_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE BILLS 
  ADD COLUMN BLL_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER BLL_USR_ID_A, 
  ADD COLUMN BLL_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN BLL_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN BLL_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN BLL_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE DELIVERYRESULTTYPE 
  ADD COLUMN DRT_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER DRT_DESC, 
  ADD COLUMN DRT_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN DRT_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN DRT_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN DRT_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE DELIVERYTYPE 
  ADD COLUMN DLT_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER DLT_DESC, 
  ADD COLUMN DLT_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN DLT_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN DLT_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN DLT_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE DICOM 
  ADD COLUMN DM_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER DM_THUMBNAIL, 
  ADD COLUMN DM_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN DM_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN DM_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN DM_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE DISCHARGETYPE 
  ADD COLUMN DIST_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER DIST_DESC, 
  ADD COLUMN DIST_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN DIST_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN DIST_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN DIST_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE DISEASE 
  ADD COLUMN DIS_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER DIS_IPD_OUT_INCLUDE, 
  ADD COLUMN DIS_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN DIS_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN DIS_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN DIS_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE DISEASETYPE 
  ADD COLUMN DCL_CREATED_BY VARCHAR(50) NULL DEFAULT NULL  AFTER DCL_DESC, 
  ADD COLUMN DCL_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN DCL_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN DCL_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN DCL_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE EXAM 
  ADD COLUMN EXA_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER EXA_LOCK, 
  ADD COLUMN EXA_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN EXA_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN EXA_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN EXA_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE EXAMROW 
  ADD COLUMN EXR_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER EXR_DESC, 
  ADD COLUMN EXR_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN EXR_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN EXR_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN EXR_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE EXAMTYPE 
  ADD COLUMN EXC_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER EXC_DESC, 
  ADD COLUMN EXC_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN EXC_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN EXC_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN EXC_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 

-- ALTER GROUP MENU
ALTER TABLE GROUPMENU 
  ADD COLUMN GM_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER GM_ACTIVE, 
  ADD COLUMN GM_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN GM_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN GM_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL; 
UPDATE GROUPMENU SET GM_ACTIVE = 1 WHERE GM_ACTIVE = 'Y';
UPDATE GROUPMENU SET GM_ACTIVE = 0 WHERE GM_ACTIVE = 'N';
ALTER TABLE GROUPMENU  
  CHANGE COLUMN GM_ACTIVE GM_ACTIVE TINYINT(1) NOT NULL DEFAULT 1;

ALTER TABLE HOSPITAL 
  ADD COLUMN HOS_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER HOS_LOCK, 
  ADD COLUMN HOS_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN HOS_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN HOS_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN HOS_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE LABORATORY 
  ADD COLUMN LAB_CREATED_BY VARCHAR(50) NULL DEFAULT NULL  AFTER LAB_PAT_INOUT, 
  ADD COLUMN LAB_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN LAB_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN LAB_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN LAB_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE LABORATORYROW 
  ADD COLUMN LABR_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER LABR_DESC, 
  ADD COLUMN LABR_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN LABR_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN LABR_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN LABR_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE MALNUTRITIONCONTROL 
  ADD COLUMN MLN_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER MLN_LOCK, 
  ADD COLUMN MLN_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN MLN_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN MLN_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN MLN_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE MEDICALDSR 
  ADD COLUMN MDSR_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER MDSR_LOCK, 
  ADD COLUMN MDSR_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN MDSR_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN MDSR_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN MDSR_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE MEDICALDSRLOT 
  ADD COLUMN LT_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER LT_LOCK, 
  ADD COLUMN LT_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN LT_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN LT_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN LT_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE MEDICALDSRSTOCKMOV 
  ADD COLUMN MMV_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER MMV_REFNO , 
  ADD COLUMN MMV_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN MMV_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN MMV_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN MMV_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE MEDICALDSRSTOCKMOVTYPE 
  ADD COLUMN MMVT_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER MMVT_TYPE, 
  ADD COLUMN MMVT_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN MMVT_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN MMVT_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN MMVT_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE MEDICALDSRSTOCKMOVWARD 
  ADD COLUMN MMVN_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER MMVN_MDSR_UNITS, 
  ADD COLUMN MMVN_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN MMVN_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN MMVN_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN MMVN_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE MEDICALDSRTYPE 
  ADD COLUMN MDSRT_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER MDSRT_DESC, 
  ADD COLUMN MDSRT_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN MDSRT_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN MDSRT_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN MDSRT_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE MEDICALDSRWARD 
  ADD COLUMN MDSRWRD_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER MDSRWRD_OUT_QTI, 
  ADD COLUMN MDSRWRD_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN MDSRWRD_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN MDSRWRD_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN MDSRWRD_ACTIVE TINYINT(1) NOT NULL DEFAULT 1;  
ALTER TABLE OPD 
  ADD COLUMN OPD_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER OPD_LOCK, 
  ADD COLUMN OPD_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN OPD_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN OPD_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN OPD_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE OPERATION 
  ADD COLUMN OPE_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER OPE_LOCK, 
  ADD COLUMN OPE_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN OPE_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN OPE_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN OPE_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE OPERATIONROW 
  ADD COLUMN OPER_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER OPER_TRANS_UNIT, 
  ADD COLUMN OPER_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN OPER_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN OPER_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN OPER_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE OPERATIONTYPE 
  ADD COLUMN OCL_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER OCL_TYPE, 
  ADD COLUMN OCL_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN OCL_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN OCL_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN OCL_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE PATIENT 
  ADD COLUMN PAT_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER PAT_TIMESTAMP, 
  ADD COLUMN PAT_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN PAT_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN PAT_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN PAT_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE PATIENTEXAMINATION 
  ADD COLUMN PEX_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER PEX_NOTE, 
  ADD COLUMN PEX_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN PEX_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN PEX_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN PEX_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE PATIENTVACCINE 
  ADD COLUMN PAV_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER PAV_LOCK, 
  ADD COLUMN PAV_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN PAV_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN PAV_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN PAV_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE PREGNANTTREATMENTTYPE 
  ADD COLUMN PTT_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER PTT_DESC, 
  ADD COLUMN PTT_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN PTT_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN PTT_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN PTT_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE PRICELISTS 
  ADD COLUMN LST_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER LST_CURRENCY, 
  ADD COLUMN LST_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN LST_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN LST_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN LST_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE PRICES 
  ADD COLUMN PRC_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER PRC_PRICE, 
  ADD COLUMN PRC_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN PRC_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN PRC_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN PRC_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE PRICESOTHERS 
  ADD COLUMN OTH_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER OTH_UNDEFINED, 
  ADD COLUMN OTH_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN OTH_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN OTH_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN OTH_ACTIVE TINYINT(1) NOT NULL DEFAULT 1;  
ALTER TABLE SUPPLIER 
  ADD COLUMN SUP_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER SUP_DELETED, 
  ADD COLUMN SUP_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN SUP_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN SUP_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN SUP_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE THERAPIES 
  ADD COLUMN THR_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER THR_SMS, 
  ADD COLUMN THR_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN THR_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN THR_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN THR_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE USER 
  ADD COLUMN US_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER US_DESC, 
  ADD COLUMN US_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN US_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN US_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN US_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE USERGROUP 
  ADD COLUMN UG_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER UG_DESC, 
  ADD COLUMN UG_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN UG_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN UG_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN UG_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE VACCINE 
  ADD COLUMN VAC_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER VAC_LOCK, 
  ADD COLUMN VAC_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN VAC_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN VAC_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN VAC_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE VACCINETYPE 
  ADD COLUMN VACT_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER VACT_DESC, 
  ADD COLUMN VACT_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN VACT_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN VACT_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN VACT_ACTIVE TINYINT(1) NOT NULL DEFAULT 1;  
ALTER TABLE VISITS 
  ADD COLUMN VST_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER VST_SMS, 
  ADD COLUMN VST_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN VST_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN VST_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN VST_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 
ALTER TABLE WARD 
  ADD COLUMN WRD_CREATED_BY VARCHAR(50) NULL DEFAULT NULL AFTER WRD_LOCK, 
  ADD COLUMN WRD_CREATED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN WRD_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL, 
  ADD COLUMN WRD_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL, 
  ADD COLUMN WRD_ACTIVE TINYINT(1) NOT NULL DEFAULT 1; 


