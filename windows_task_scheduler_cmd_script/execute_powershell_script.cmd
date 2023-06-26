PowerShell.exe -Command "Set-ExecutionPolicy -ExecutionPolicy AllSigned -Scope CurrentUser" >> "%TEMP%\StartupLog.txt" 2>&1
PowerShell "C:\enter\here\path\to\fetch_news_api_json.ps1" >> "%TEMP%\StartupLog.txt" 2>&1
