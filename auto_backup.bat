@echo off

setlocal enabledelayedexpansion

REM Exibir unidades locais e USB disponíveis
echo |----------------------|
echo | Unidades disponiveis |
echo |______________________|
wmic logicaldisk get caption

REM Solicitar ao usuário a letra da unidade de origem
set /p source_letter=Digite a letra da unidade de origem: 

REM Solicitar ao usuário a letra da unidade de destino
set /p destination_letter=Digite a letra da unidade de destino: 

REM Solicitar o usuário deretório de origem
set /p source_directory=Insira a origem:

REM Solicitar o usuário diretório de origem
set /p destination_directory= Agora insira o destino do backup:

echo Copiando arquivos e pastas...

xcopy /E /C /I /Q /Y "%source_directory%" "%destination_directory%" 

echo Copiar e colar concluidos.

pause
