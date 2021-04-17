@echo off
rem ########################################################
rem # ファイル名: batch_function04.cmd
rem # 概要： バッチ関数化サンプル
rem #-------------------------------------------------------
rem # Author: Isaac Factory (sir.isaac.factory@icloud.com)
rem # Repository: https://github.com/SirIsaacFactory/BatchSamples
rem # Blog: https://isaacfactory.com/
rem # Date: 2021/04/17
rem # Code version: v1.00
rem ########################################################

rem ########################################################
rem # main関数呼び出し
rem ########################################################
call :main
goto :eof

rem ########################################################
rem # 関数定義
rem ########################################################
:sum
    setlocal
    echo sum start
    call :sum_sub %*%
    echo sum end
    endlocal
    exit /b %errorlevel%
goto :eof

:sum_sub
    echo sum_sub start
    set op1=%~1%
    set op2=%~2%
    set /a total=%op1% + %op2%
    echo sum_sub end
    exit /b %total%
goto :eof

rem ########################################################
rem # main関数定義
rem ########################################################
:main
    echo main start

    rem # 変数設定
    set a=10
    set b=5
    set c=1
    set d=2

    echo a=%a%
    echo b=%b%
    echo c=%c%
    echo d=%d%

    rem # main内計算結果表示
    set /a total=%c% + %d%
    echo 01:main total=%total%

    rem # 関数呼び出し
    call :sum %a% %b%
    set sum_total=%errorlevel%

    rem # 関数呼び出し結果表示
    echo 02:sum sum_total=%sum_total%

    rem # main内計算結再果表示
    echo 03:main total=%total%

    echo main end

    exit /b 0
goto :eof
