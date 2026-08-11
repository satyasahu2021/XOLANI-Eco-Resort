@echo off
setlocal
title XOLANI Drawings Repository Bootstrap

echo.
echo ==========================================================
echo XOLANI ECO RESORT ^& AQUA RETREAT
echo DRAWINGS REPOSITORY BOOTSTRAP
echo ==========================================================
echo.

REM Run this file from the root of the XOLANI-Eco-Resort repository.

set "ROOT=drawings"

echo Creating drawings repository structure...

mkdir "%ROOT%" 2>nul
mkdir "%ROOT%\Current" 2>nul
mkdir "%ROOT%\Current\00_Master_Plan" 2>nul
mkdir "%ROOT%\Current\01_Reception_Administration" 2>nul
mkdir "%ROOT%\Current\02_Restaurant_Kitchen" 2>nul
mkdir "%ROOT%\Current\03_Conference_Events" 2>nul
mkdir "%ROOT%\Current\04_Cottage_Type_A" 2>nul
mkdir "%ROOT%\Current\05_Cottage_Type_B" 2>nul
mkdir "%ROOT%\Current\06_Aquaculture" 2>nul
mkdir "%ROOT%\Current\07_Organic_Farming" 2>nul
mkdir "%ROOT%\Current\08_Renewable_Energy_Utilities" 2>nul
mkdir "%ROOT%\Current\09_Security_Maintenance" 2>nul
mkdir "%ROOT%\Current\10_Guest_Recreation_Wellness" 2>nul
mkdir "%ROOT%\Issued" 2>nul
mkdir "%ROOT%\Superseded" 2>nul

REM Create repository documentation files only if they do not already exist.
if not exist "%ROOT%\README.txt" (
    >"%ROOT%\README.txt" echo XOLANI Eco Resort ^& Aqua Retreat - Drawings Repository
    >>"%ROOT%\README.txt" echo.
    >>"%ROOT%\README.txt" echo The drawings repository is the official source of project drawings used for the DPR.
)

if not exist "%ROOT%\Current\README.txt" (
    >"%ROOT%\Current\README.txt" echo CURRENT DRAWINGS
    >>"%ROOT%\Current\README.txt" echo.
    >>"%ROOT%\Current\README.txt" echo Store available original drawings here.
    >>"%ROOT%\Current\README.txt" echo Preserve original filenames.
    >>"%ROOT%\Current\README.txt" echo Do NOT rename or edit drawings.
    >>"%ROOT%\Current\README.txt" echo Place drawings in the correct facility folder.
)

if not exist "%ROOT%\Issued\README.txt" (
    >"%ROOT%\Issued\README.txt" echo ISSUED DRAWINGS
    >>"%ROOT%\Issued\README.txt" echo.
    >>"%ROOT%\Issued\README.txt" echo Contains drawings approved through DDIF for DPR reference.
)

if not exist "%ROOT%\Superseded\README.txt" (
    >"%ROOT%\Superseded\README.txt" echo SUPERSEDED DRAWINGS
    >>"%ROOT%\Superseded\README.txt" echo.
    >>"%ROOT%\Superseded\README.txt" echo Contains obsolete or replaced drawings.
    >>"%ROOT%\Superseded\README.txt" echo Never delete historical drawings.
)

echo.
echo Bootstrap completed.
echo.
echo Repository structure:
tree "%ROOT%" /F
echo.
echo ==========================================================
echo DONE
echo ==========================================================
pause
endlocal
