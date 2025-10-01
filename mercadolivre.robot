*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Acessar Home do Mercado Livre
    Open Browser To Home Page
    Home Page Should Be Open

Acessar Ofertas do Mercado Livre
    Open Browser To Home Page
    Open Offers
    Offer Page Should Be Open

*** Keywords ***
Open Browser To Home Page
    Open Browser    https://www.mercadolivre.com.br/    chrome
    Log    De certo os testes, família!!!!

Home Page Should Be Open
    Title Should Be    Mercado Livre Brasil - Frete Grátis no mesmo dia

Offer Page Should Be Open
    Title Should Be    Ofertas do dia | Mercadolivre Brasil

Open Offers
    Wait Until Element Is Visible    locator=//a[text()='Ofertas']
    Capture Page Screenshot
    Click Element                    locator=//a[text()='Ofertas']