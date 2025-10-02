*** Settings ***
Resource    ../../settings.resource

*** Test Cases ***

Acessar Ofertas do Mercado Livre
    Open Browser To Home Page
    Open Offers
    Offer Page Should Be Open
