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
set name=Isaac Newton
echo Display Name01: %name%
setlocal
set name=Leonhard Euler
echo Display Name02: %name%
endlocal
echo Display Name03: %name%
