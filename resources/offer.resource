*** Settings ***
Resource    ../settings.resource

*** Keywords ***
Offer Page Should Be Open
    Title Should Be    Ofertas do dia | Mercadolivre Brasil

Open Offers
    Wait Until Element Is Visible    //a[text()='Ofertas']
    Capture Page Screenshot
    Click Element                    //a[text()='Ofertas']