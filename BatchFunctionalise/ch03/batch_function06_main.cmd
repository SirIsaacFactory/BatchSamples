@echo off
rem ########################################################
rem # �t�@�C����: batch_function06_main.cmd
rem # �T�v�F �o�b�`�֐����T���v��
rem #-------------------------------------------------------
rem # Author: Isaac Factory (sir.isaac.factory@icloud.com)
rem # Repository: https://github.com/SirIsaacFactory/BatchSamples
rem # Blog: https://isaacfactory.com/
rem # Date: 2021/04/18
rem # Code version: v1.00
rem ########################################################

rem ########################################################
rem # �ϐ���`
rem ########################################################
set scriptdir=%~d0%~p0
set subcmd=%scriptdir%batch_function06_sub.cmd

rem ########################################################
rem # main�֐��Ăяo��
rem ########################################################
call :main
goto :eof

rem ########################################################
rem # main�֐���`
rem ########################################################
:main
    setlocal
    echo main start
    call :main_sub
    echo main end
    endlocal
goto :eof

:main_sub
    call "%subcmd%" "Isaac Newton"
    exit /b 0
goto :eof
