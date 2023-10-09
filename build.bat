@REM cmake -G "MingW Makefiles" -A x64 -DCMAKE_BUILD_TYPE=Release
@echo off
set currentDir=%cd%
set currentDir=%currentDir:\=/%
@REM @echo %currentDir%

@REM Some variables definitions.
set BUILD_DIR=%currentDir%/build
set INSTALL_DIR=%currentDir%/bin
set BUILD_TYPE=Release

@REM Generate and build the project.
@REM Using MingW Makefiles generator for convenience absolutely not mandatory.
cmake -G "MSYS Makefiles" -B %BUILD_DIR% -S %currentDir% --install-prefix %INSTALL_DIR%  -DCMAKE_BUILD_TYPE=%BUILD_TYPE%
cd %BUILD_DIR%
cmake --build %BUILD_DIR% --config %BUILD_TYPE%
cmake --install %BUILD_DIR% --prefix %INSTALL_DIR%
cd %currentDir%



