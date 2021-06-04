setlocal
set PATH=%LOCALAPPDATA%\JetBrains\Toolbox\apps\AndroidStudio\ch-0\202.7351085\jre\bin;%PATH%
for /f "usebackq delims=" %%A in (`git rev-parse --short HEAD`) do set COMMITID=%%A
set BUILDID="%COMMITID% Build at %date% %time%"
rem echo %BUILDID%
flutter build apk --dart-define=APPVER=%BUILDID%