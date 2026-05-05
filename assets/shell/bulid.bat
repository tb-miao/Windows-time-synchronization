@echo off
chcp 65001
title 打包 py
set version=1.0.0
set /p version=请输入版本号 (留空默认1.0.0): 
nuitka --standalone --onefile --remove-output --output-dir="./dist" --product-name="Windows-time-synchronization" --file-version="%version%" --product-version="%version%" --file-description="Windows-time-synchronization" --copyright="Nachceko" --output-filename="Windows-time-synchronization" --windows-icon-from-ico="./assets/icon/ico.ico" --windows-uac-admin main.py