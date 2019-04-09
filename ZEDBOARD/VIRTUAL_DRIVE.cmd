













setlocal
@echo ------------------------Set design paths----------------------------

@set batchfile_name=%~n0
@set batchfile_drive=%~d0
@set batchfile_path=%~dp0

@%batchfile_drive%

@cd %batchfile_path%
@echo -- Run : %batchfile_name%
@echo -- Current Design Path: %batchfile_path%
@call %mylocalpath%S_SET.cmd
@echo --------------------------------------------------------------------
@echo ----------Virtual Drive for short project directory-----------------
@echo --------------------------------------------------------------------
@echo -- Create a virtuell drive, if you use a long project path.
@echo -- See Xilinx AR#52787 :
@echo --   https://www.xilinx.com/support/answers/52787.html
@echo -- Note:
@echo --   Mount virtual drive with this script is temporary.
@echo --   You must remount again after OS reboot.
@echo --   For permanent mount, create own CMD on OS autostart folder.
@echo --------------------------------------------------------------------
@echo --   to add drive: select unused drive letter (for ex.: x)
@echo --   to remove drive: select used virtual drive letter (for ex.: x)
@set /p driverletter="Select virtuell driver letter:"
@echo ------------------------
@echo -- (0)  add virtual drive
@echo -- (1)  remove virtual drive 
@echo -- (x)  exit, without process drive options
@echo ----
@set /p new_drive=" Select option for example (0):"
@if "%new_drive%"=="0" (@GOTO ADD_DRIVE)
@if "%new_drive%"=="1" (@GOTO REMOVE_DRIVE)
@GOTO ABBORT

:ADD_DRIVE
@subst %driverletter%: %batchfile_path%..
@echo --Start scripts from virtual driver: %driverletter%
@start %driverletter%:\
@echo --------------------------------------------------------------------
@GOTO EOF
:REMOVE_DRIVE
@subst %driverletter%: /D
@GOTO EOF
:ABORT
@echo -------------abort virtual drive generation-------------------------
:EOF
@echo ------------------------------Finished------------------------------
@echo --------------------------------------------------------------------
