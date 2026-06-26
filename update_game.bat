@echo off
echo ========================================
echo   阿巴巴跑酷 - 快速更新脚本
echo ========================================
echo.

cd /d "%~dp0"

echo [1/4] 检查 Git 状态...
git status
echo.

echo [2/4] 添加修改的文件...
git add .
echo.

echo [3/4] 提交更改...
set /p commit_msg="请输入更新说明（按回车使用默认）: "
if "%commit_msg%"=="" (
    set commit_msg=更新游戏内容
)
git commit -m "%commit_msg%"
echo.

echo [4/4] 推送到 GitHub...
git push
echo.

echo ========================================
echo   更新完成！
echo ========================================
echo.
echo 请访问以下地址查看更新后的游戏：
echo https://zhouks-byte.github.io/game_ababaRun/
echo.
echo 点击 Actions 查看部署状态
echo.
pause