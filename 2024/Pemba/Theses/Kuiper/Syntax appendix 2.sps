* Encoding: UTF-8.

DATASET ACTIVATE DataSet1.
*Syntax appendix 2..
*Model 1. 
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT log_wealth
  /METHOD=ENTER number_wives status.
*Model 2.
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT years_education
  /METHOD=ENTER number_wives status.
*Model 3a.
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT log_wealth
  /METHOD=ENTER number_wives status years_education.
*Model 3 and Inspection.
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA COLLIN TOL
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT log_wealth
  /METHOD=ENTER number_wives years_education status
  /SCATTERPLOT=(*ZRESID ,*ZPRED)
  /RESIDUALS HISTOGRAM(ZRESID) NORMPROB(ZRESID).
*analysis without outliers.
RECODE household_ID ('pesu152'=1) ('pesu154'=1) ('pesu105'=1) (ELSE=0) INTO Outlier.
EXECUTE.

USE ALL.
COMPUTE filter_$=(Outlier = 0).
VARIABLE LABELS filter_$ 'Outlier = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.
