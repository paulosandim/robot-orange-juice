*** Settings ***
Resource    ../settings.resource


*** Keywords ***
Type Product Name in the Search Field
    Input Text    //input[contains(@type, 'text')]    Violao Acustico Seven Mini Folk Sv-17 Dbk Dark Black 2024  

Submit Search
    Click Element    //button[contains(@type, 'submit')]

Page Must Contain the product
    Page Should Contain    Violao Acustico Seven Mini Folk Sv-17 Dbk Dark Black 2024