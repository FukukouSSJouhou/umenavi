setlocal
for /f "usebackq delims=" %%A in (`git rev-parse --short HEAD`) do set COMMITID=%%A
set BUILDID=" %COMMITID% %date% %time%"
rem echo %BUILDID%
flutter build web --dart-define=APPVER=%BUILDID%