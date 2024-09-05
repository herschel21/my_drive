@echo off
for %%i in (*.zip *.rar) do (
	mkdir "%%~ni"
	if "%%~xi"==".zip" (
		tar -xf "%%~i" -C "%%~ni"
	) else (
		unrar x "%%i" "%%~ni\"
	)
)