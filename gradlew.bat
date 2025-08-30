@echo off
set DIR=%~dp0
set JAVA_EXE=%JAVA_HOME%\bin\java.exe
if exist "%JAVA_EXE%" (
  "%JAVA_EXE%" -version >nul 2>&1
)
if errorlevel 1 (
  echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
  exit /b 1
)
"%JAVA_EXE%" -classpath "%DIR%\gradle\wrapper\gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain %*
