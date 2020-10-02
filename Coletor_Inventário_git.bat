@echo off

echo Coletando informacoes, para o inventario

echo Aguarde ...

:: Entrada de Desktop de User
cd "%userprofile%\desktop"

:: Coleta de Username do Computador
wmic computersystem get username, Manufacturer, model  /format:csv > "%COMPUTERNAME%.csv"

:: Coleta do Serial do computador.
wmic bios get serialnumber /format:csv >> "%COMPUTERNAME%.csv"

:: Coleta de Key do Windows
wmic path softwarelicensingservice get OA3xOriginalProductKey /format:csv >> "%COMPUTERNAME%.csv"

:: Coleta Sistema Operacional
wmic OS get Caption, InstallDate /format:csv >> "%COMPUTERNAME%.csv"

:: Coleta dados da CPU
wmic CPU get Name, Processorid /format:csv >> "%COMPUTERNAME%.csv"

:: RAM
wmic MemoryChip get Capacity, MemoryType, Speed /format:csv >> "%COMPUTERNAME%.csv"

:: Storage/ hd
wmic logicaldisk get freespace, name, size /format:csv >> %COMPUTERNAME%.csv"


:: Coleta de IP'S, MacAdress.
wmic nicconfig where "IPEnabled  = True" get ipaddress /format:csv >> "%COMPUTERNAME%.csv"

:: Coleta de Programas
wmic product get name /format:csv >> "%COMPUTERNAME%.csv"


cls

echo Operacao concluida, foi gerado um arquivo com o nome %computername% na sua area de trabalho

echo Obrigado.

timeout 15

exit