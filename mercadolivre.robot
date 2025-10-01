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

Pesquisar Produto
    Open Browser To Home Page
    Type Product Name in the Search Field
    Submit Search
    Page Must Contain the product


*** Keywords ***
Open Browser To Home Page
    Open Browser    https://www.mercadolivre.com.br/    chrome
    Log    De certo os testes, família!!!!

Home Page Should Be Open
    Title Should Be    Mercado Livre Brasil - Frete Grátis no mesmo dia

Offer Page Should Be Open
    Title Should Be    Ofertas do dia | Mercadolivre Brasil

Open Offers
    Wait Until Element Is Visible    //a[text()='Ofertas']
    Capture Page Screenshot
    Click Element                    //a[text()='Ofertas']

Type Product Name in the Search Field
    Input Text    //input[contains(@type, 'text')]    Violao Acustico Seven Mini Folk Sv-17 Dbk Dark Black 2024  

Submit Search
    Click Element    //button[contains(@type, 'submit')]

Page Must Contain the product
    Page Should Contain    Violao Acustico Seven Mini Folk Sv-17 Dbk Dark Black 2024
