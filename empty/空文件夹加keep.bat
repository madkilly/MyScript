@echo off&echo 查找空文件夹
set dd=%~1
if "%~1"=="" set/p dd=输入或拖入要查找的总文件夹：
cd/d "%dd%"
for /f "delims=" %%a in ('dir/b/s/ad')do (
  dir/a/s/b "%%a"|find/v "">nul||(set/a "fn+=1" echo > %%a\keep &echo.路径 %%a 文件夹名 %%~nxa))
if defined fn (echo 共找到 %fn% 个空文件夹)else echo 没找到空文件夹
pause 