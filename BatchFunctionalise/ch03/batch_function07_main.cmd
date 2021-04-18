@echo off
rem ########################################################
rem # �t�@�C����: batch_function07_main.cmd
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
set subcmd=%scriptdir%batch_function07_sub.cmd

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
    set a=5
    set b=10

    rem # �ϐ��\��
    echo a=%a%
    echo b=%b%

    rem # �����Z
    call "%subcmd%" sum %a% %b%
    set sum_result=%errorlevel%
    echo a+b=%sum_result%

    rem # �����Z
    call "%subcmd%" diff %a% %b%
    set diff_result=%errorlevel%
    echo a-b=%diff_result%

    exit /b 0
goto :eof
