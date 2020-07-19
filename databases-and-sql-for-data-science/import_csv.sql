TRUNCATE TABLE EMPLOYEES;
TRUNCATE TABLE JOB_HISTORY;

LOAD DATA INFILE '/Users/robertbarrimond/Developer/jupyter-notebooks/databases-and-sql-for-data-science/Employees.csv' 
INTO TABLE EMPLOYEES
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
(
    EMP_ID,
    F_NAME,
    L_NAME,
    SSN,
    @date_var,
    SEX,
    ADDRESS,
    JOB_ID,
    SALARY,
    MANAGER_ID,
    DEP_ID
)
SET B_DATE = STR_TO_DATE(@date_var, '%m/%d/%Y');

LOAD DATA INFILE '/Users/robertbarrimond/Developer/jupyter-notebooks/databases-and-sql-for-data-science/JobsHistory.csv' 
INTO TABLE JOB_HISTORY
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
(
    EMPL_ID,
    @date_var,
    JOBS_ID,
    DEPT_ID
)
SET START_DATE = STR_TO_DATE(@date_var, '%m/%d/%Y');