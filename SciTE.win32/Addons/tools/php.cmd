@echo off 
:: -------- Starter for SciTE ----------
:: used to avoid Chaos and store  Language Distbins within their respective Directories. 
:: ---------------------------------------
set toolName=php
set toolExt=.exe
set toolParam=%*

::~dp0 = Full Path to current Directory with trailing slash
set toolPath=%cd%\%toolName%

:: temporarly append toolsDir to local Path 
set path=%path%;%toolPath%;

:: first try if a user had installed a local package
if exist %toolPath%\%toolName%%toolExt% (
echo ~ WRapper - Start
echo %toolPath%\%toolName% %toolParam%
%toolPath%\%toolName%%toolExt% %toolParam%
goto freude
) 

:: then look for it within the system 
where /Q %toolName%%toolExt%

IF %ERRORLEVEL% == 0 (
echo ~ WRapper - Start
where %toolName%%toolExt%
%toolName%%toolExt% %toolParam%
) else ( 
echo ... please install %toolName% or copy a custom pack to %toolPath% .
)

:freude
