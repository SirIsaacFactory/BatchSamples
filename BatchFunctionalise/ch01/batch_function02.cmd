@echo off
rem ########################################################
rem # ファイル名: batch_function02.cmd
rem # 概要： バッチ関数化サンプル
rem #-------------------------------------------------------
rem # Author: Isaac Factory (sir.isaac.factory@icloud.com)
rem # Repository: https://github.com/SirIsaacFactory/BatchSamples
rem # Blog: https://isaacfactory.com/
rem # Date: 2021/04/13
rem # Code version: v1.00
rem ########################################################

rem ########################################################
rem # メイン関数実行
rem ########################################################
call :main
goto :eof

rem ########################################################
rem # 現在日時表示関数
rem ########################################################
:display_date_time
    echo 現在の日時は%date% %time%です。
goto :eof

rem ########################################################
rem # メイン関数定義
rem ########################################################
:main
    echo 処理開始
    call :display_date_time
    echo 処理終了
goto :eof
