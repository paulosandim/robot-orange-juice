*** Settings ***
Resource    ../settings.resource

*** Variables ***
${BTN_OFFERS}    //a[text()='Ofertas']

*** Keywords ***
Offer Page Should Be Open
    Title Should Be    Ofertas do dia | Mercadolivre Brasil

Open Offers
    Wait Until Element Is Visible    ${BTN_OFFERS}
    Capture Page Screenshot
    Click Element                    ${BTN_OFFERS}                    