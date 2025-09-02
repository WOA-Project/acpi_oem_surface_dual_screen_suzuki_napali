@echo off

cd src
..\asl.exe DSDT.asl
xcopy /cheriky DSDT.aml ..\DSDT_rebuild.aml
del DSDT.aml
cd ..
iasl -d DSDT_rebuild.aml
exit /b