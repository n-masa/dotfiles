@echo off
echo リンク作成しています
powershell -NoProfile -ExecutionPolicy Unrestricted .\dotfilelink.ps1
echo 完了しました
pause > nul
exit
