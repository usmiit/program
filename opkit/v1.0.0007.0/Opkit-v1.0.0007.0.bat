@echo off
rem Project Name: Opkit Program.
title Opkit - %username%
prompt $d $t :
echo.
echo 	      ***************************************************
echo 	      ***************************************************
echo 	      ***************************************************
echo 	      ***                                             ***
echo 	      ***   Opkit 1.0.0007.0                          ***
echo               ***   Copyright (c) 2014                        ***
echo 	      ***   The Opkit Project, USMiit.                ***
echo 	      ***   All rights reserved.                      ***
echo 	      ***                                             ***
echo 	      ***************************************************
echo 	      ***************************************************
echo 	      ***************************************************

:MAINMENU
color 0a
echo.
echo.
echo 			   	     MENU
echo.
echo.  
echo   	      01: TASK MANAGER
echo   	      02: TASK SCHEDULER
echo   	      03: USER ACCOUNT MANAGER
echo   	      04: VIEW SYSTEM INFORMATION
echo   	      05: ABOUT US
echo   	      00: EXIT 
echo.
echo.
set cho=
set /p "cho=Enter your choice: "
if "%cho%" == "1" goto TASKMANAGER
if "%cho%" == "01" goto TASKMANAGER 

if "%cho%" == "2" goto TASKSCHEDULER
if "%cho%" == "02" goto TASKSCHEDULER

if "%cho%" == "3" goto USERACCOUNTMANAGER
if "%cho%" == "03" goto USERACCOUNTMANAGER

if "%cho%" == "4" goto VIEWSYSTEMINFO
if "%cho%" == "04" goto VIEWSYSTEMINFO

if "%cho%" == "5" goto ABOUTUS
if "%cho%" == "05" goto ABOUTUS

if "%cho%" == "0" goto QUIT
if "%cho%" == "00" goto QUIT

if "%cho%" == "exit" goto QUIT
if "%cho%" == "EXIT" goto QUIT

echo invalid choice!

goto MAINMENU

:TASKMANAGER
color 0a
echo.
echo.
echo 			         TASK MANAGER
echo.
echo.  
echo   	      01: VIEW PROCESSES BY PROPERTIES
echo   	      02: TERMINATE PROCESSES BY PROPERTIES
echo   	      00: BACK 
echo.
echo.
set cho=
set /p "cho=Enter your choice: "
if "%cho%" == "1" goto VIEWPROCESS 
if "%cho%" == "01" goto VIEWPROCESS 

if "%cho%" == "2" goto STOPPROCESS
if "%cho%" == "02" goto STOPPROCESS

if "%cho%" == "0" goto MAINMENU
if "%cho%" == "00" goto MAINMENU

if "%cho%" == "exit" goto QUIT
if "%cho%" == "EXIT" goto QUIT

echo invalid choice!

goto TASKMANAGER

:ABOUTUS
color 0a
echo.
echo.
echo 			         ABOUT US
echo.
echo.
echo  Opkit is a free and open source task manager, task scheduler, and user account
echo  manager application software. It is a cross platform executable module - 
echo  processor independent software application package. 
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES   *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set cho=
set /p "cho=Do you want to exit? "
if "%cho%" == "Y" goto QUIT
if "%cho%" == "y" goto QUIT

if "%cho%" == "N" goto MAINMENU
if "%cho%" == "n" goto MAINMENU

if "%cho%" == "R" goto ABOUTUS
if "%cho%" == "r" goto ABOUTUS

if "%cho%" == "exit" goto QUIT
if "%cho%" == "EXIT" goto QUIT

echo Invalid choice!

goto ABOUTUS


:VIEWPROCESS
color 0a
echo.
echo.
echo 			       VIEW PROCESS(ES)
echo.
echo.  
echo   	      01: VIEW PROCESSES CURRENTLY RUNNING
echo   	      02: VIEW PROCESSES CURRENTLY RUNNING ON REMOTE COMPUTER
echo   	      03: VIEW PROCESSES NOT RESPONDING 
echo   	      04: VIEW PROCESSES BY SERVICES
echo   	      05: VIEW PROCESSES BY CENTRAL PROCESSING UNIT TIME (CPUT)
echo   	      06: VIEW PROCESSES BY MODULES
echo  	      07: VIEW PROCESSES BY MEMORY USAGE
echo   	      08: VIEW PROCESSES BY SESSION NUMBER
echo   	      09: VIEW PROCESS BY PID
echo     	      10: VIEW PROCESS BY USER ACCOUNT NAME
echo   	      00: BACK
echo.
echo.
set cho=
set /p "cho=Enter your choice: "
if "%cho%" == "1" goto CURRENTLYRUNNING
if "%cho%" == "01" goto CURRENTLYRUNNING

if "%cho%" == "2" goto REMOTECOMPUTERPROCESS
if "%cho%" == "02" goto REMOTECOMPUTERPROCESS

if "%cho%" == "3" goto NOTRESPONDING
if "%cho%" == "03" goto NOTRESPONDING

if "%cho%" == "4" goto SERVICES
if "%cho%" == "04" goto SERVICES

if "%cho%" == "5" goto CPUTIME
if "%cho%" == "05" goto CPUTIME

if "%cho%" == "6" goto MODULES
if "%cho%" == "06" goto MODULES

if "%cho%" == "7" goto MEMUSAGE
if "%cho%" == "07" goto MEMUSAGE

if "%cho%" == "8" goto SESSION
if "%cho%" == "08" goto SESSION

if "%cho%" == "9" goto PID
if "%cho%" == "09" goto PID

if "%cho%" == "10" goto USERACCOUNTNAME
if "%cho%" == "010" goto USERACCOUNTNAME

if "%cho%" == "0" goto  TASKMANAGER
if "%cho%" == "00" goto TASKMANAGER

if "%cho%" == "exit" goto QUIT
if "%cho%" == "EXIT" goto QUIT

echo Invalid choice!

goto VIEWPROCESS

:CURRENTLYRUNNING
color 0a
echo.
echo.
echo 		      VIEW PROCESSES CURRENTLY RUNNING
tasklist /FI "status eq running"
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES   *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto VIEWPROCESS
if "%inp%" == "n" goto VIEWPROCESS

if "%inp%" == "R" goto CURRENTLYRUNNING
if "%inp%" == "r" goto CURRENTLYRUNNING

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto CURRENTLYRUNNING


:REMOTECOMPUTERPROCESS
color 0a
echo.
echo.
echo   		VIEW PROCESSES CURRENTLY RUNNING ON REMOTE COMPUTER
set /p "user=Enter username [Administrator]: "
set /p "pass=Enter administrator password: "
set /p "ip=Enter internet protocol address of the remote computer: "
tasklist /s \\"%ip%" /u "%user%" /p /"%pass%"
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES   *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT 
if "%inp%" == "y" goto QUIT

if "%inp%" == "n" goto VIEWPROCESS
if "%inp%" == "N" goto VIEWPROCESS

if "%inp%" == "R" goto REMOTECOMPUTERPROCESS
if "%inp%" == "r" goto REMOTECOMPUTERPROCESS

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto REMOTECOMPUTERPROCESS


:NOTRESPONDING
color 0a
echo.
echo.
echo 			VIEW PROCESSES NOT RESPONDING
tasklist /FI "status eq not responding"
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES,  *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto VIEWPROCESS
if "%inp%" == "n" goto VIEWPROCESS

if "%inp%" == "R" goto NOTRESPONDING
if "%inp%" == "r" goto NOTRESPONDING

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto NOTRESPONDING

:SERVICES
color 0a
tasklist /SVC
echo.
echo 			VIEW PROCESS(ES) BY SERVICE
set /p "inp=Enter the service name: "
tasklist /FI "services eq %inp%"
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES,  *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto VIEWPROCESS
if "%inp%" == "n" goto VIEWPROCESS

if "%inp%" == "R" goto SERVICES
if "%inp%" == "r" goto SERVICES

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto SERVICES

:CPUTIME
color 0a
tasklist /FI "status eq running"
echo.
echo.
echo 	     VIEW PROCESS BY CENTRAL PROCESSING UNIT TIME (CPUT)
set/p "inp=Enter the process CPU time (format: Hours:Minutes:Seconds - 00:00:00): "
tasklist /FI "cputime eq %inp%"
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES,  *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto VIEWPROCESS
if "%inp%" == "n" goto VIEWPROCESS

if "%inp%" == "R" goto CPUTIME
if "%inp%" == "r" goto CPUTIME

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto CPUTIME

:MODULES

color 0a
echo.
echo.
tasklist /M
echo.
echo.
echo 			VIEW PROCESS(ES) BY MODULES/DLL 
set /p "inp=Enter the module (DLL) file name: "
tasklist /FI "modules eq %inp%"
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES   *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto VIEWPROCESS
if "%inp%" == "n" goto VIEWPROCESS

if "%inp%" == "R" goto MODULES
if "%inp%" == "r" goto MODULES

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto MODULES 

:MEMUSAGE
color 0a
tasklist /FI "status eq running"
echo.
echo 	                  VIEW PROCESS BY MEMORY USAGE
set /p "inp=Enter the process memory usage value: "
tasklist /FI "memusage eq %inp%"
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto VIEWPROCESS
if "%inp%" == "n" goto VIEWPROCESS

if "%inp%" == "R" goto MEMUSAGE
if "%inp%" == "r" goto MEMUSAGE

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto MEMUSAGE

:SESSION
color 0a
tasklist /FI "status eq running"
echo.
echo.
echo 		    VIEW PROCESS(ES) BY SESSION NUMBER
set /p "inp=Enter the process session number: "
tasklist /FI "session eq %inp%"
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES,  *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto VIEWPROCESS
if "%inp%" == "n" goto VIEWPROCESS

if "%inp%" == "R" goto SESSION
if "%inp%" == "r" goto SESSION

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto SESSION

:PID
color 0a
echo.
echo.
tasklist /FI "status eq running"
echo.
echo.
echo 			    VIEW PROCESS BY PID
set /p "inp=Enter the process identity number: "
tasklist /FI "pid eq %inp%"
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES,  *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto VIEWPROCESS
if "%inp%" == "n" goto VIEWPROCESS

if "%inp%" == "R" goto PID
if "%inp%" == "r" goto PID

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto PID

:USERACCOUNTNAME
color 0a
tasklist /FI "status eq running"
echo.
echo 		   VIEW PROCESS(ES) BY USER ACCOUNT NAME
set /p "inp=Enter the user account name: "
tasklist /FI "username eq %inp%"
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES,  *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto VIEWPROCESS
if "%inp%" == "n" goto VIEWPROCESS

if "%inp%" == "R" goto USERACCOUNTNAME
if "%inp%" == "r" goto USERACCOUNTNAME

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto USERACCOUNTNAME


:STOPPROCESS
color 0a
echo.
echo.
echo 			      TERMINATE PROCESS
echo.
echo.
echo   	      01: TERMINATE PROCESS BY PROCESS NAME
echo   	      02: TERMINATE PROCESS BY PID
echo   	      03: TERMINATE PROCESS RUNNING ON A REMOTE COMPUTER
echo   	      00: BACK
echo.
echo.
set cho=
set /p "cho=Enter your choice: "
if "%cho%" == "1" goto STOPPROCESSBYNAME
if "%cho%" == "01" goto STOPPROCESSBYNAME

if "%cho%" == "2" goto STOPPROCESSBYPID
if "%cho%" == "02" goto STOPPROCESSBYPID

if "%cho%" == "3" goto STOPPROCESSREMOTELY
if "%cho%" == "03" goto STOPPROCESSREMOTELY

if "%cho%" == "0" goto TASKMANAGER
if "%cho%" == "00" goto TASKMANAGER

if "%cho%" == "exit" goto QUIT
if "%cho%" == "EXIT" goto QUIT

echo Invalid choice!

goto STOPPROCESS

:STOPPROCESSBYNAME
color 0a
tasklist /FI "status eq running"
echo.
echo.
echo  		      TERMINATE PROCESS BY PROCESS NAME
set /p "inp=Enter process name with extension [format: filename.exe]: "
taskkill /f /im "%inp%"
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES,  *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "n" goto STOPPROCESS
if "%inp%" == "N" goto STOPPROCESS

if "%inp%" == "R" goto STOPPROCESSBYNAME
if "%inp%" == "r" goto STOPPROCESSBYNAME

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto STOPPROCESSBYNAME

:STOPPROCESSBYPID
color 0a
tasklist /FI "status eq running"
echo.
echo.
echo  	 	          TERMINATE PROCESS BY PID
set /p "inp=Enter process identity number: "
echo.
taskkill /f /PID "%inp%"
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES,  *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "n" goto STOPPROCESS
if "%inp%" == "N" goto STOPPROCESS

if "%inp%" == "R" goto STOPPROCESSBYPID
if "%inp%" == "r" goto STOPPROCESSBYPID

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto STOPPROCESSBYPID

:STOPPROCESSREMOTELY
color 0a
echo.
echo.
echo   		TERMINATE PROCESS RUNNING ON A REMOTE COMPUTER
set /p "user=Enter username [Administrator]: "
set /p "pass=Enter administrator password: "
set /p "procnam=Enter the process name with extension [format: filename.exe]: "
set /p "ip=Enter Internet Protocol (IP) address of the remote computer: "
tasklist /S \\"%ip%" /U "%user%" /P /"%pass%"
echo.
taskkill /S \\"%ip%" /U "%user%" /P "%pass%" /IM "%procnam%"
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES   *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "n" goto STOPPROCESS
if "%inp%" == "N" goto STOPPROCESS

if "%inp%" == "R" goto STOPPROCESSREMOTELY
if "%inp%" == "r" goto STOPPROCESSREMOTELY

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto STOPPROCESSREMOTELY

:TASKSCHEDULER
color 0a
echo.
echo.
echo 			        TASK SCHEDULER
echo.
echo.  
echo   	      01: SCHEDULE LOGOFF
echo   	      02: SCHEDULE SHUTDOWN
echo   	      03: SCHEDULE RESTART
echo   	      04: TERMINATE SCHEDULE
echo   	      00: BACK 
echo.
echo.
set cho=
set /p "cho=Enter your choice: "

if "%cho%" == "1" goto SCHEDULELOGOFF
if "%cho%" == "01" goto SCHEDULELOGOFF

if "%cho%" == "2" goto SCHEDULETURNOFF
if "%cho%" == "02" goto SCHEDULETURNOFF

if "%cho%" == "3" goto SCHEDULERESTART
if "%cho%" == "03" goto SCHEDULERESTART

if "%cho%" == "4" goto STOPSCHEDULE
if "%cho%" == "04" goto STOPSCHEDULE

if "%cho%" == "0" goto MAINMENU
if "%cho%" == "00" goto MAINMENU

if "%cho%" == "exit" goto QUIT
if "%cho%" == "EXIT" goto QUIT

echo invalid choice!

goto TASKSCHEDULER

:SCHEDULELOGOFF
color 0a
echo.
echo.
echo   		               SCHEDULE LOGOFF
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES,  *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to logoff? "
if "%inp%" == "Y" goto NLOGOFF 
if "%inp%" == "y" goto NLOGOFF

if "%inp%" == "N" goto TASKSCHEDULER
if "%inp%" == "n" goto TASKSCHEDULER

if "%inp%" == "R" goto SCHEDULELOGOFF
if "%inp%" == "r" goto SCHEDULELOGOFF

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto SCHEDULELOGOFF

:SCHEDULETURNOFF
color 0a
echo.
echo.
echo   		              SCHEDULE SHUTDOWN
echo.
echo.
echo   	      01: NORMAL SHUTDOWN IN TIME
echo   	      02: FORCEFUL SHUTDOWN IN TIME
echo   	      03: REMOTE SHUTDOWN IN TIME BY COMMAND LINE INTERFACE (CLI)
echo   	      04: REMOTE SHUTDOWN IN TIME BY GRAPHICAL USER INTERFACE (GUI)
echo   	      00: BACK
echo.
echo.
set cho=
set /p "cho=Enter your choice: "
if "%cho%" == "1" goto NSHUTDOWN
if "%cho%" == "01" goto NSHUTDOWN

if "%cho%" == "2" goto FSHUTDOWN
if "%cho%" == "02" goto FSHUTDOWN

if "%cho%" == "3" goto REMOTESHUTDOWNCUI
if "%cho%" == "03" goto REMOTESHUTDOWNCUI

if "%cho%" == "4" goto REMOTESHUTDOWNGUI
if "%cho%" == "04" goto REMOTESHUTDOWNGUI

if "%cho%" == "0" goto TASKSCHEDULER
if "%cho%" == "00" goto TASKSCHEDULER

if "%cho%" == "exit" goto QUIT
if "%cho%" == "EXIT" goto QUIT

echo Invalid choice!

goto SCHEDULETURNOFF


:NSHUTDOWN
color 0a
echo.
echo.
echo 		            NORMAL SHUTDOWN IN TIME
set /p "time=Enter the time (second) to wait: "
set /p "comment=Enter comment: "
shutdown -s -t "%time%" -c "%comment%"
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES   *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto SCHEDULETURNOFF
if "%inp%" == "n" goto SCHEDULETURNOFF

if "%inp%" == "R" goto NSHUTDOWN
if "%inp%" == "r" goto NSHUTDOWN

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto NSHUTDOWN

:FSHUTDOWN
color 0a
echo.
echo.
echo 		          FORCEFUL SHUTDOWN IN TIME
set /p "time=Enter the time (second) to wait: "
set /p "comment=Enter comment: "
shutdown /f -s -t "%time%" -c "%comment%"
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES,  *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto SCHEDULETURNOFF
if "%inp%" == "n" goto SCHEDULETURNOFF

if "%inp%" == "R" goto FSHUTDOWN
if "%inp%" == "r" goto FSHUTDOWN

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto FSHUTDOWN

:REMOTESHUTDOWNCUI
color 0a
echo.
echo.
echo 	                 CLI REMOTE SHUTDOWN IN TIME
set /p "ip=Enter the internet protocol address: "
set /p "time=Enter the specific time to wait: "
set /p "comment=Enter comment: "
shutdown /m \\"%ip%" -s -t "%time%" -c "%comment%"
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES,  *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto SCHEDULETURNOFF
if "%inp%" == "n" goto SCHEDULETURNOFF

if "%inp%" == "R" goto REMSHUTDOWNCUI
if "%inp%" == "r" goto REMSHUTDOWNCUI

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto REMOTESHUTDOWNCUI

:REMOTESHUTDOWNGUI
color 0a
echo.
echo.
echo 	                 GUI REMOTE SHUTDOWN IN TIME
shutdown -i
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES   *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto SCHEDULETURNOFF
if "%inp%" == "n" goto SCHEDULETURNOFF

if "%inp%" == "R" goto REMOTESHUTDOWNGUI
if "%inp%" == "r" goto REMOTESHUTDOWNGUI

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto REMOTESHUTDOWNGUI


:SCHEDULERESTART
color 0a
echo.
echo.
echo   		               SCHEDULE RESTART
echo.
echo.
echo   	      01: NORMAL RESTART IN TIME
echo   	      02: FORCEFUL RESTART IN TIME
echo   	      03: REMOTE RESTART IN TIME BY COMMAND LINE INTERFACE (CLI)
echo   	      04: REMOTE RESTART IN TIME BY GRAPHICAL USER INTERFACE (GUI)
echo   	      00: BACK
echo.
echo.
set cho=
set /p "cho=Enter your choice: "
if "%cho%" == "1" goto NRESTART
if "%cho%" == "01" goto NRESTART

if "%cho%" == "2" goto FRESTART
if "%cho%" == "02" goto FRESTART

if "%cho%" == "3" goto REMOTERESTARTCUI
if "%cho%" == "03" goto REMOTERESTARTCUI

if "%cho%" == "4" goto REMOTERESTARTGUI
if "%cho%" == "04" goto REMOTERESTARTGUI

if "%cho%" == "0" goto TASKSCHEDULER
if "%cho%" == "00" goto TASKSCHEDULER

if "%cho%" == "exit" goto QUIT
if "%cho%" == "EXIT" goto QUIT

echo Invalid choice!

goto SCHEDULERESTART

:NRESTART
color 0a
echo.
echo.
echo 		            NORMAL RESTART IN TIME
set /p "time=Enter the time (second) to wait: "
set /p "comment=Enter comment: "
shutdown -r -t "%time%" -c "%comment%"
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES   *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto SCHEDULETURNOFF
if "%inp%" == "n" goto SCHEDULETURNOFF

if "%inp%" == "R" goto NRESTART
if "%inp%" == "r" goto NRESTART

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto NRESTART

:FRESTART
color 0a
echo.
echo.
echo 		          FORCEFUL RESTART IN TIME
set /p "time=Enter the time (second) to wait: "
set /p "comment=Enter comment: "
shutdown /f -r -t "%time%" -c "%comment%"
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES   *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto SCHEDULETURNOFF
if "%inp%" == "n" goto SCHEDULETURNOFF

if "%inp%" == "R" goto FRESTART
if "%inp%" == "r" goto FRESTART

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto FRESTART

:REMOTERESTARTCUI
color 0a
echo.
echo.
echo 	                 CLI REMOTE RESTART IN TIME
set /p "ip=Enter the internet protocol address: "
set /p "time=Enter the time (second) to wait: "
set /p "comment=Enter comment: "
shutdown /m \\%ip% -r -t "%time%" -c "%comment%"
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES   *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto SCHEDULERESTART
if "%inp%" == "n" goto SCHEDULERESTART

if "%inp%" == "R" goto REMOTERESTARTCUI
if "%inp%" == "r" goto REMOTERESTARTCUI

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto REMOTERESTARTCUI

:REMOTERESTARTGUI
color 0a
echo.
echo.
echo 	                 GUI REMOTE RESTART IN TIME
shutdown -i
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES   *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto SCHEDULERESTART
if "%inp%" == "n" goto SCHEDULERESTART

if "%inp%" == "R" goto REMOTERESTARTGUI
if "%inp%" == "r" goto REMOTERESTARTGUI

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto REMOTERESTARTGUI

:STOPSCHEDULE
color 0a
echo.
echo.
echo                               TERMINATE SCHEDULE
shutdown -a
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES,  *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto TASKSCHEDULER
if "%inp%" == "n" goto TASKSCHEDULER

if "%inp%" == "R" goto STOPSCHEDULE
if "%inp%" == "r" goto STOPSCHEDULE

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto STOPSCHEDULE


:USERACCOUNTMANAGER
color 0a
echo.
echo.
echo 			     USER ACCOUNT MANAGER
echo.
echo.
echo 	      01: ADD NEW USER ACCOUNT 
echo    	      02: VIEW USER ACCOUNT
echo		      03: DELETE USER ACCOUNT 
echo 	      04: ADD NEW LOCAL GROUP
echo    	      05: VIEW LOCAL GROUP
echo		      06: DELETE LOCAL GROUP
echo		      07: ADD USER ACCOUNT TO LOCAL GROUP
echo		      08: VIEW MEMBERS OF A LOCAL GROUP 
echo		      09: DELETE USER ACCOUNT FROM LOCAL GROUP
echo		      00: BACK
echo.
echo.
set cho=
set /p "cho=Enter your choice: "
if "%cho%" == "1" goto ADDNEWUSERACCOUNT
if "%cho%" == "01" goto ADDNEWUSERACCOUNT

if "%cho%" == "2" goto VIEWUSERACCOUNT
if "%cho%" == "02" goto VIEWUSERACCOUNT

if "%cho%" == "3" goto DELETEUSERACCOUNT
if "%cho%" == "03" goto DELETEUSERACCOUNT

if "%cho%" == "4" goto ADDNEWLOCALGROUP
if "%cho%" == "04" goto ADDNEWLOCALGROUP

if "%cho%" == "5" goto VIEWLOCALGROUPS
if "%cho%" == "05" goto VIEWLOCALGROUPS

if "%cho%" == "6" goto DELETELOCALGROUP
if "%cho%" == "06" goto DELETELOCALGROUP

if "%cho%" == "7" goto ADDUSERTOLOCALGROUP
if "%cho%" == "07" goto ADDUSERTOLOCALGROUP

if "%cho%" == "8" goto VIEWLOCALGROUPMEMBERS
if "%cho%" == "08" goto VIEWLOCALGROUPMEMBERS

if "%cho%" == "9" goto DELETEUSERFROMLOCALGROUP
if "%cho%" == "09" goto DELETEUSERFROMLOCALGROUP

if "%cho%" == "0" goto MAINMENU
if "%cho%" == "00" goto MAINMENU

if "%cho%" == "exit" goto QUIT
if "%cho%" == "EXIT" goto QUIT

echo Invalid choice!

goto USERACCOUNTMANAGER 


:ADDNEWUSERACCOUNT
color 0a
echo.
echo.
echo 			    ADD NEW USER ACCOUNT
set /p "useraccname=Enter user account name: "
set /p "pass=Enter user account password: "
net user "%useraccname%" "%pass%" /add
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES   *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto USERACCOUNTMANAGER
if "%inp%" == "n" goto USERACCOUNTMANAGER

if "%inp%" == "R" goto ADDNEWUSERACCOUNT
if "%inp%" == "r" goto ADDNEWUSERACCOUNT

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto ADDNEWUSERACCOUNT


:VIEWUSERACCOUNT
color 0a
echo.
echo.
echo 			    VIEW USER ACCOUNT(S)
net user 
echo.
echo.
echo 	      01: VIEW DETAILS ABOUT A SPECIFIED USER ACCOUNT 
echo 	      02: CHANGE USER ACCOUNT PASSWORD FOR ANY SPECIFIED USER 
echo    	      00: BACK
echo.
echo.
set cho=
set /p "cho=Enter your choice: "
if "%cho%" == "1" goto VIEWDETAILSABOUTUSERACCOUNT
if "%cho%" == "01" goto VIEWDETAILSABOUTUSERACCOUNT

if "%cho%" == "2" goto CHANGEUSERPASSWORD
if "%cho%" == "02" goto CHANGEUSERPASSWORD

if "%cho%" == "0" goto USERACCOUNTMANAGER
if "%cho%" == "00" goto USERACCOUNTMANAGER

if "%cho%" == "exit" goto QUIT
if "%cho%" == "EXIT" goto QUIT

echo Invalid choice!

goto VIEWUSERACCOUNT


:VIEWDETAILSABOUTUSERACCOUNT
color 0a
echo.
echo.
echo 		 VIEW DETAILS ABOUT A SPECIFIED USER ACCOUNT
net user 
set /p "useraccname=Enter user account name: "
echo.
echo.
net user "%useraccname%"
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES   *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto VIEWUSERACCOUNT
if "%inp%" == "n" goto VIEWUSERACCOUNT

if "%inp%" == "R" goto VIEWDETAILSABOUTUSERACCOUNT
if "%inp%" == "r" goto VIEWDETAILSABOUTUSERACCOUNT

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto VIEWDETAILSABOUTUSERACCOUNT


:CHANGEUSERPASSWORD
color 0a
echo.
echo.
echo 	     CHANGE USER ACCOUNT PASSWORD FOR ANY SPECIFIED USER
net user 
echo.
echo.
set /p "useraccname=Enter user account name: "
echo.
echo.
net user "%useraccname%" *
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES,  *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto VIEWUSERACCOUNT
if "%inp%" == "n" goto VIEWUSERACCOUNT

if "%inp%" == "R" goto CHANGEUSERPASSWORD
if "%inp%" == "r" goto CHANGEUSERPASSWORD

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto CHANGEUSERPASSWORD


:DELETEUSERACCOUNT
color 0a
echo.
echo.
echo 			     DELETE USER ACCOUNT	
net user
echo.
echo.
set /p "useraccname=Enter user account name: "
net users "%useraccname%" /delete
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES   *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto USERACCOUNTMANAGER
if "%inp%" == "n" goto USERACCOUNTMANAGER

if "%inp%" == "R" goto DELETEUSERACCOUNT
if "%inp%" == "r" goto DELETEUSERACCOUNT

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto DELETEUSERACCOUNT


:ADDNEWLOCALGROUP
color 0a
echo.
echo.
echo 			     ADD NEW LOCAL GROUP
set /p "localgroupname=Enter local group name: "
net localgroup  "%localgroupname%" /add /comment:"%localgroupname% group"
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES   *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto USERACCOUNTMANAGER
if "%inp%" == "n" goto USERACCOUNTMANAGER

if "%inp%" == "R" goto ADDNEWLOCALGROUP
if "%inp%" == "r" goto ADDNEWLOCALGROUP

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto ADDNEWLOCALGROUP


:VIEWLOCALGROUPS
color 0a
echo.
echo.
echo 			      VIEW LOCAL GROUP(S)
net localgroup
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES   *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto USERACCOUNTMANAGER
if "%inp%" == "n" goto USERACCOUNTMANAGER

if "%inp%" == "R" goto VIEWNETLOCALGROUPS
if "%inp%" == "r" goto VIEWNETLOCALGROUPS

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto VIEWLOCALGROUPS


:DELETELOCALGROUP
color 0a
echo.
echo.
echo 			      DELETE LOCAL GROUP	
net localgroup
echo.
echo.
set /p "localgroupname=Enter local group name: "
net localgroup  "%localgroupname%" /delete
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES   *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto USERACCOUNTMANAGER
if "%inp%" == "n" goto USERACCOUNTMANAGER

if "%inp%" == "R" goto DELETELOCALGROUP
if "%inp%" == "r" goto DELETELOCALGROUP

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto DELETELOCALGROUP


:ADDUSERTOLOCALGROUP
color 0a
echo.
echo.
echo 			ADD USER ACCOUNT TO LOCAL GROUP
net localgroup
net user
set /p "localgroupname=Enter local group name: "
set /p "useraccname=Enter user account name: "
net localgroup "%localgroupname%" "%useraccname%" /add
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES   *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto USERACCOUNTMANAGER
if "%inp%" == "n" goto USERACCOUNTMANAGER

if "%inp%" == "R" goto ADDUSERTOLOCALGROUP
if "%inp%" == "r" goto ADDUSERTOLOCALGROUP

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto ADDUSERTOLOCALGROUP


:VIEWLOCALGROUPMEMBERS
color 0a
echo.
echo.
echo 			 VIEW MEMBERS OF A LOCAL GROUP
net localgroup
echo.
echo.
set /p "localgroupname=Enter local group name to view members: "
echo.
echo.
net localgroup "%localgroupname%" 
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES   *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto USERACCOUNTMANAGER
if "%inp%" == "n" goto USERACCOUNTMANAGER

if "%inp%" == "R" goto VIEWLOCALGROUPMEMBERS
if "%inp%" == "r" goto VIEWLOCALGROUPMEMBERS

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto VIEWLOCALGROUPMEMBERS


:DELETEUSERFROMLOCALGROUP
color 0a
echo.
echo.
echo 		     DELETE USER ACCOUNT FROM A LOCAL GROUP
net localgroup
net user
set /p "localgroupname=Enter local group name: "
set /p "useraccname=Enter user account name: "
net localgroup "%localgroupname%" "%useraccname%" /delete
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES   *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto USERACCOUNTMANAGER
if "%inp%" == "n" goto USERACCOUNTMANAGER

if "%inp%" == "R" goto DELETEUSERFROMLOCALGROUP
if "%inp%" == "r" goto DELETEUSERFROMLOCALGROUP

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto DELETEUSERFROMLOCALGROUP


:VIEWSYSTEMINFO
color 0a
echo.
echo.
echo 			      SYSTEM INFORMATION
echo.
echo.
echo Hardware Information
echo --------------------------------------------------------------------------------
echo + Current User:                    %username%
echo + Computer Name:                   %computername%
echo + Hostname:                        %userdomain%
echo + Number of Processor(s):          %number_of_processors%
echo + Processor Architecture:          %processor_architecture%
echo + Processor Level:                 %processor_level%
echo + Processor Revision:              %processor_revision%
echo.
echo.
echo Software Information
echo --------------------------------------------------------------------------------
echo + Operating System:                %os% 
echo + CMD Extension Version:           %cmdextversion% 
echo.
echo.
echo *****************
echo *               *
echo * NOTE:         *
echo * Y MEANS YES   *
echo * N MEANS NO    *
echo * R MEANS REDO  *
echo *               *
echo *****************
echo.
echo.
set inp=
set /p "inp=Do you want to exit? "
if "%inp%" == "Y" goto QUIT
if "%inp%" == "y" goto QUIT

if "%inp%" == "N" goto MAINMENU
if "%inp%" == "n" goto MAINMENU

if "%inp%" == "R" goto VIEWSYSTEMINFO
if "%inp%" == "r" goto VIEWSYSTEMINFO

if "%inp%" == "exit" goto QUIT
if "%inp%" == "EXIT" goto QUIT

echo Invalid choice!

goto VIEWSYSTEMINFO

:NLOGOFF
echo logging off ...
shutdown -l

:QUIT
echo.
exit