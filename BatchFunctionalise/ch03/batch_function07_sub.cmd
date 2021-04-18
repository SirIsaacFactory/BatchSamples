@echo off
rem ########################################################
rem # ファイル名: batch_function07_sub.cmd
rem # 概要： バッチ関数化サンプル
rem #-------------------------------------------------------
rem # Author: Isaac Factory (sir.isaac.factory@icloud.com)
rem # Repository: https://github.com/SirIsaacFactory/BatchSamples
rem # Blog: https://isaacfactory.com/
rem # Date: 2021/04/18
rem # Code version: v1.00
rem ########################################################

rem ########################################################
rem # 関数呼び出し
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
