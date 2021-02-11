@echo off

echo Coletando informacoes, para o inventario

echo Aguarde ...

:: Entrada de Desktop de User
mkdir "%userprofile%\desktop\Coleta_%COMPUTERNAME%"

copy produkey.aaaaa "%userprofile%\desktop\Coleta_%COMPUTERNAME%"

cls 

echo Aguarde...

cd /d "%userprofile%\desktop\Coleta_%COMPUTERNAME%"

:: Coleta de Username do Computador, Marca, modelo
wmic computersystem get username, Manufacturer, model  /format:csv > "%COMPUTERNAME%.csv"

:: Coleta do Serial do computador.
wmic bios get serialnumber /format:csv >> "%COMPUTERNAME%.csv"

:: Coleta Sistema Operacional
wmic OS get Caption, InstallDate /format:csv >> "%COMPUTERNAME%.csv"

:: Coleta dados da CPU
wmic CPU get Name, Processorid /format:csv >> "%COMPUTERNAME%.csv"

:: RAM
wmic MemoryChip get Capacity, MemoryType, Speed /format:csv >> "%COMPUTERNAME%.csv"

:: Storage/ hd
wmic logicaldisk get freespace, name, size /format:csv >> %COMPUTERNAME%.csv"


:: Coleta de Programas
:: wmic product get name /format:csv >> "%COMPUTERNAME%.csv"

rename produkey.aaaaa produkey.exe
:: PRODUKEY.
produkey.exe /stext >  "PRODUKEY %COMPUTERNAME%.txt"


del produkey.exe 

cls
timeout 1
:: Valida Office

cd "c:\Arquivos de Programas\Microsoft Office\Office14"
cls
cscript ospp.vbs /dstatus >> "%userprofile%\desktop\Coleta_%COMPUTERNAME%\ValidaOffice %COMPUTERNAME%.txt"
echo Aguarde........
timeout 1


cd "c:\Program Files\Microsoft Office\Office15"
cls
cscript ospp.vbs /dstatus >> "%userprofile%\desktop\Coleta_%COMPUTERNAME%\ValidaOffice %COMPUTERNAME%.txt"
echo Aguarde.........
timeout 1


cd "c:\Program Files\Microsoft Office\Office16"
cls
cscript ospp.vbs /dstatus >> "%userprofile%\desktop\Coleta_%COMPUTERNAME%\ValidaOffice %COMPUTERNAME%.txt"
echo Aguarde..........
timeout 1


cd "c:\Program Files (x86)\Microsoft Office\Office14"
cls
cscript ospp.vbs /dstatus >> "%userprofile%\desktop\Coleta_%COMPUTERNAME%\ValidaOffice %COMPUTERNAME%.txt"
echo Aguarde...........
timeout 1


cd "c:\Program Files\Microsoft Office\Office14"
cls
cscript ospp.vbs /dstatus >> "%userprofile%\desktop\Coleta_%COMPUTERNAME%\ValidaOffice %COMPUTERNAME%.txt"
echo Aguarde............

timeout 1


cd "c:\Program Files (x86)\Microsoft Office\Office15"
cls
cscript ospp.vbs /dstatus >> "%userprofile%\desktop\Coleta_%COMPUTERNAME%\ValidaOffice %COMPUTERNAME%.txt"
echo Aguarde...........
timeout 1


cd "C:\Program Files\Microsoft Office\Office15"
cls
cscript ospp.vbs /dstatus >> "%userprofile%\desktop\Coleta_%COMPUTERNAME%\ValidaOffice %COMPUTERNAME%.txt"
echo Aguarde............
timeout 1


cd "c:\Program Files\Microsoft Office\Office16"
cls
cscript ospp.vbs /dstatus >> "%userprofile%\desktop\Coleta_%COMPUTERNAME%\ValidaOffice %COMPUTERNAME%.txt"
cls
echo Aguarde...............
timeout 1


cd "c:\Program Files (x86)\Microsoft Office\Office16"
cls
cscript ospp.vbs /dstatus >> "%userprofile%\desktop\Coleta_%COMPUTERNAME%\ValidaOffice %COMPUTERNAME%.txt"
echo Aguarde...............

timeout 1


cd "c:\Program Files\Microsoft Office\Office17"
cls
cscript ospp.vbs /dstatus >> "%userprofile%\desktop\Coleta_%COMPUTERNAME%\ValidaOffice %COMPUTERNAME%.txt"
echo Aguarde...............
timeout 1



cd "c:\Program Files (x86)\Microsoft Office\Office17"
cls
cscript ospp.vbs /dstatus >> "%userprofile%\desktop\Coleta_%COMPUTERNAME%\ValidaOffice %COMPUTERNAME%.txt"
echo Aguarde...............
timeout 1
cls

echo Operacao concluida, foi gerado uma pasta o nome "Coleta_%COMPUTERNAME%" na sua area de trabalho.



echo Obrigado.

timeout 15

exit
