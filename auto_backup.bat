@echo off

set /p source_directory=Insira a origem:
set /p destination_directory= Agora insira o destino do backup:

echo Copiando arquivos e pastas...

xcopy /E /C /I /Q /Y "%source_directory%" "%destination_directory%" 

echo Copiar e colar conclu�dos.

pause