*** Settings ***
Resource    ../settings.resource

*** Variables ***
${BTN_SEARCH}    //button[contains(@type, 'submit')]
${FLD_SEARCH}    //input[contains(@type, 'text')]


*** Keywords ***
Submit Search
    Click Element    ${BTN_SEARCH}

Page Must Contain the product
    Page Should Contain    ${PRODUCT_SEARCH}

Type Product ${PRODUCT_SEARCH} in the Search Field
    Input Text    ${FLD_SEARCH}    ${PRODUCT_SEARCH}  
