@echo off
rem ########################################################
rem # �t�@�C����: batch_function01.cmd
rem # �T�v�F �o�b�`�֐����T���v��
rem #-------------------------------------------------------
rem # Author: Isaac Factory (sir.isaac.factory@icloud.com)
rem # Repository: https://github.com/SirIsaacFactory/BatchSamples
rem # Blog: https://isaacfactory.com/
rem # Date: 2021/04/13
rem # Code version: v1.00
rem ########################################################

rem ########################################################
rem # ���ݓ����\���֐�
rem ########################################################
:display_date_time
    echo ���݂̓�����%date% %time%�ł��B
goto :eof

rem ########################################################
rem # ���C������
rem ########################################################
echo �����J�n
call :display_date_time
echo �����I��

