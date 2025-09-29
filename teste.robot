*** Settings ***
Documentation    Meu primeiro código com Robot


*** Variables ***
${USER_NAME}    Paulete


*** Keywords ***
Exibir mensagem para uma pessoa especifica
    [Arguments]    ${name}
    Log To Console    \nSeja bem-vindo, ${name}!!!


*** Test Cases ***
Teste para demonstrar codigo Robot
    Exibir mensagem para uma pessoa especifica    
    ...    name=${USER_NAME}