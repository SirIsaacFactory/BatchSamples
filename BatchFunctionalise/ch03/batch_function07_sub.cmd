@echo off
rem ########################################################
rem # �t�@�C����: batch_function07_sub.cmd
rem # �T�v�F �o�b�`�֐����T���v��
rem #-------------------------------------------------------
rem # Author: Isaac Factory (sir.isaac.factory@icloud.com)
rem # Repository: https://github.com/SirIsaacFactory/BatchSamples
rem # Blog: https://isaacfactory.com/
rem # Date: 2021/04/18
rem # Code version: v1.00
rem ########################################################

rem ########################################################
rem # �֐��Ăяo��
rem ########################################################
goto :%~1%

rem ########################################################
rem # sum
rem ########################################################
:sum
    setlocal
    call :sum_sub %*%
    endlocal
    exit /b %errorlevel%
goto :eof

:sum_sub
    set /a result=%2 + %3 
    exit /b %result%
goto :eof

rem ########################################################
rem # diff
rem ########################################################
:diff
    setlocal
    call :diff_sub %*%
    endlocal
    exit /b %errorlevel%
goto :eof

:diff_sub
    set /a result=%2 - %3 
    exit /b %result%
goto :eof
