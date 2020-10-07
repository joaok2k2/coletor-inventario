# Coletor_V2

Essa .bat é funcional para coleta de dados.
Uma .bat simples que usa a ferramenta nativa do windows o wmic, podendo coletar diversas informações do pc local. 
Nos comandos nos setamos o formato e a saida dele. 

O formato das informações que o prompt vai gerar está em .CSV e a saída dele vai ser um arquivo com o hostname do computador, em empresas com servidores AD, normalmente os computers são categorizados, por isso a escolha do hostname como saida do arquivo.


Há maneiras de usar o wmic no Windows por meios remotos porém ele não consegue executar certos comandos.

# Format CSV

Por definição, CSV é um formato de arquivo que significa “comma-separated-values” (valores separados por vírgulas). Isso significa que os campos de dados indicados neste formato normalmente são separados ou delimitados por uma vírgula.

Em base vai ser um arquivo em excel que você vai trabalhar emcima.
Pessoal também usa muito o LibreOffice para trabalhar com esse tipo de formato de arquivo.

# Problemas
Quando executamos uma bat externa o windows defender ou qualquer antivírus, pode relacionar esse arquivo como malicioso. Mas não é o caso do nosso coletor.
Caso for distribuir esse arquivo remotamente para a sua empresa tente instruir eles sobre.

Na coleta de Key do Windows, pode haver de não conseguir coletar.
```sh
:: Coleta de Key do Windows
wmic path softwarelicensingservice get OA3xOriginalProductKey /format:csv >> "%COMPUTERNAME%.csv"
```
Motivos:
- Windows Pirata 
- Veio ativado de fábrica, muito comum em notebook, onde a key fica na bios.
- Há relatos que o Windows 7 não consegue puxar essa função, mas possa estar relacionado com os dois motivos acima.


