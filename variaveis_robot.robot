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

Variavel Escalar
  Log To Console    ${VARIAVEL_ESCALAR}
  ${comunidade}    Set Variable    Orange Juice
  VAR    ${nome}    Paulete
  VAR    ${sobrenome}    Sandim
  Log To Console    \nChamando 2 variaveis: ${nome} ${sobrenome}
  VAR    ${nome_completo}    ${nome} ${sobrenome}
  Log To Console    \nConcatenando as 2 variaveis: ${nome_completo} - ${comunidade}
  VAR    ${valor1}    5
  VAR    ${valor2}    1
  VAR    ${resultado}    ${valor1} - ${valor2}
  Log To Console    Resultado: ${resultado}
  ${resultado}    Evaluate    ${valor1} - ${valor2}
  Log To Console    Resultado: ${resultado}



