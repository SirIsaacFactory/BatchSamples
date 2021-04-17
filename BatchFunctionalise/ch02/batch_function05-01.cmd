@echo off
rem ########################################################
rem # ファイル名: batch_function05-01.cmd
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
    echo sum start
    set op1=%~1%
    set op2=%~2%
    set /a sub_total=%op1% + %op2%
    echo sum end
    exit /b %sub_total%
goto :eof

rem ########################################################
rem # main関数定義
rem ########################################################
:main
    echo main start

    rem # 変数設定
    set main_a=10
    set main_b=5
    set main_c=1
    set main_d=2

    echo main_a=%main_a%
    echo main_b=%main_b%
    echo main_c=%main_c%
    echo main_d=%main_d%

    rem # main内計算結果表示
    set /a main_total=%main_c% + %main_d%
    echo 01:main main_total=%main_total%

    rem # 関数呼び出し
    call :sum %main_a% %main_b%
    set main_sum_total=%errorlevel%

    rem # 関数呼び出し結果表示
    echo 02:sum main_sum_total=%main_sum_total%

    rem # main内計算結再果表示
    echo 03:main main_total=%main_total%

    echo main end

    exit /b 0
goto :eof
