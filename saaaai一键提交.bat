@echo off
chcp 65001 >nul
echo.
echo  ==================== 一键提交到 GitHub ====================
echo.

:: 检查是否在 git 仓库里
git rev-parse --is-inside-work-tree >nul 2>&1
if %errorlevel% neq 0 (
    echo 错误：当前目录不是 git 仓库！
    echo.
    pause
    exit /b 1
)

:: 让你输入提交信息（可以直接回车用默认消息）
set "msg="
set /p msg=请输入提交信息（直接回车用时间作为消息）： 
if "%msg%"=="" (
    set "msg=更新 %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~5,2%"
)

echo.
echo 正在添加文件...
git add .

echo.
echo 正在提交...
git commit -m "%msg%"

echo.
echo 正在拉取最新代码（rebase 模式）...
git pull origin main --rebase
if %errorlevel% neq 0 (
    echo.
    echo 拉取失败！可能有冲突，请手动解决后再运行此脚本
    echo.
    pause
    exit /b 1
)

echo.
echo 正在推送到 GitHub...
git push origin main
if %errorlevel% equ 0 (
    echo.
    echo 全部完成！已经成功推送到 GitHub 啦 ！
) else (
    echo.
    echo 推送到 GitHub 失败！请检查网络或手动执行 git push
)

echo.
pause