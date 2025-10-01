*** Settings ***
Documentation     Exemplo de uso de variáveis em Robot Framework

*** Variables ***
${VARIAVEL_ESCALAR}    Paulete
@{VARIAVEL_LISTA}      Maçã    Banana    Laranja
&{VARIAVEL_DICIONARIO}  nome=Paulete    idade=30    cidade=Campo Grande

*** Test Cases ***
Exemplo de Uso de Variáveis
    Log To Console    \nVariavel Escalar: ${VARIAVEL_ESCALAR}
    Log To Console    \nVariavel Lista: ${VARIAVEL_LISTA}
    Log To Console    \nPrimeiro item da lista: ${VARIAVEL_LISTA}[0]
    Log To Console    \nVariavel Dicionario: ${VARIAVEL_DICIONARIO}
    Log To Console    \nNome do dicionario: ${VARIAVEL_DICIONARIO['nome']}
    Log To Console    \nIdade do dicionario: ${VARIAVEL_DICIONARIO['idade']}
