*** Settings ***
Resource    ../../settings.resource

*** Test Cases ***
Acessar Home do Mercado Livre
    Open Browser To Home Page
    Home Page Should Be Open