#!/bin/sh
# The Shell use for backup ecmp-common-service catalina.out file
y=`date "+%Y"`
m=`date "+%m"`
d=`date "+%d"`
PATH=/data/tomcatlog
cd $PATH/ecmp-common-service/
/bin/mkdir -p  $y/$m
/bin/cp catalina.out $y/$m/catalina.out.$y$m$d
/bin/mv *.log $y/$m/
/bin/mv *.txt $y/$m/       
/bin/sleep  10
 > catalina.out
 

 
#The shell use for backup ecmp-inventory-service catalina.out file 
cd $PATH/ecmp-inventory-service/
/bin/mkdir -p  $y/$m
/bin/cp catalina.out $y/$m/catalina.out.$y$m$d
/bin/mv *.log $y/$m/
/bin/mv *.txt $y/$m/
/bin/sleep  10
 > catalina.out


#The shell use for backup ecmp-portal-web catalina.out file  
cd $PATH/ecmp-portal-web/
/bin/mkdir -p  $y/$m
/bin/cp catalina.out $y/$m/catalina.out.$y$m$d
/bin/mv *.log $y/$m/
/bin/mv *.txt $y/$m/
/bin/sleep  10
 > catalina.out


#The shell use for backup ecmp-product-service catalina.out file
cd $PATH/ecmp-product-service/
/bin/mkdir -p  $y/$m
/bin/cp catalina.out $y/$m/catalina.out.$y$m$d
/bin/mv *.log $y/$m/
/bin/mv *.txt $y/$m/
/bin/sleep  10
 > catalina.out


exit

