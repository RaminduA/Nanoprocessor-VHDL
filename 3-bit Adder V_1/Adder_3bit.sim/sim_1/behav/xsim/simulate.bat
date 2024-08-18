@echo off
REM ****************************************************************************
REM Vivado (TM) v2018.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Fri Jun 09 10:57:56 +0530 2023
REM SW Build 2188600 on Wed Apr  4 18:40:38 MDT 2018
REM
REM Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
call xsim TB_Adder_3bit_behav -key {Behavioral:sim_1:Functional:TB_Adder_3bit} -tclbatch TB_Adder_3bit.tcl -view C:/Users/RAMINDU/Desktop/2nd sem/Computer Organization and Digital Design/Week 10/Lab 9-10/Nanoprocessor/3-bit Adder V_1/TB_Adder_3bit_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
