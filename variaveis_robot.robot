*** Settings ***
Documentation     Exemplo de uso de variáveis em Robot Framework
Library    .venv/lib/python3.10/site-packages/robot/libraries/Collections.py

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

Variaveis Lista
    Log To Console    ${VARIAVEL_LISTA}
    Log To Console    ${VARIAVEL_LISTA}[0]
    FOR    ${index}    ${item}    IN ENUMERATE    @{VARIAVEL_LISTA}
        Log To Console    ${index}: ${item}
    END
    # Criando uma nova lista
    ${listinha_mercado}    Create List    macarrao    tomate    alho    cebola
    Log To Console    ${listinha_mercado}
    Length Should Be    ${listinha_mercado}    4
    # Criando lista nova versão
    VAR    @{listinha_padaria}    pao    queijo    presunto
    Log To Console    Listinha padaria: ${listinha_padaria}

    # Manipulando a list - alterando item pelo index
    ${listinha_padaria}[1]    Set Variable    queijo prato
    Log To Console    Lista padaria alterada: ${listinha_padaria}

    # Usando collection e alterando item pelo index
    Set List Value    ${listinha_padaria}    1    queijo minas
    Log To Console    Lista collections: ${listinha_padaria}

    # Adicionando item na lista
    Append To List    ${listinha_padaria}    requeijao
    Log To Console    ${listinha_padaria}

    # Removendo item da lista pelo index
    Remove From List    ${listinha_padaria}    2
    Log To Console    ${listinha_padaria}

    # Removendo item pelo valor
    Remove Values From List    ${listinha_padaria}    requeijao
    Log To Console    ${listinha_padaria}


