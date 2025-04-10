@echo off
:: 设置工作目录为 Git 仓库所在的路径

:: 执行 git 命令
git add .
git commit -m "Your commit message"
git push origin main

:: 结束脚本
pause
