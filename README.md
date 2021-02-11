# **Coletor_V7**

Essa .bat é funcional para coleta de dados, utilizando em conjunto a ferramenta produkey.

Uma .bat simples que usa a ferramenta nativa do windows o wmic, podendo coletar diversas informações do pc local, junto com a ferramenta produkey podendo coletar informações sólidas referentes as keys do sistema e dependendo do office a key completa, a bat foi implementanda outro caminho para verificação de outros offices recentes, colentando apenas o começo da key, podendo haver a identificação da chave do mesmo na base de dados.


O formato das informações que o prompt vai gerar está em .CSV e a saída dele vai ser um arquivo com o hostname do computador, em empresas com servidores AD, normalmente os computers são categorizados, por isso a escolha do hostname como saida do arquivo.

Vai haver uma sáida também de dois outros arquivos txt.

- "PRODUKEY %COMPUTERNAME%.txt (Keys do windows, dependendo do office completo)


- ValidaOffice %COMPUTERNAME%.txt (A chave de acordo com o arquivo do office, o começo da  chave dependendo do produto office)


# Format CSV

Por definição, CSV é um formato de arquivo que significa “comma-separated-values” (valores separados por vírgulas). Isso significa que os campos de dados indicados neste formato normalmente são separados ou delimitados por uma vírgula.

Em base vai ser um arquivo em excel que você vai trabalhar em cima, podendo separar as linhas por colunas.
Pessoal também usa muito o LibreOffice para trabalhar com esse tipo de formato de arquivo.



