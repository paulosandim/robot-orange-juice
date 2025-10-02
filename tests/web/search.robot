*** Settings ***
Resource    ../../settings.resource

Suite Setup    Log To Console    isso aqui vem antes de tudo
Suite Teardown    Log To Console    isso aqui vem depois de tudo
Test Setup    Open Browser To Home Page
Test Teardown    Close Browser

*** Test Cases ***
Pesquisar Produto
    Type Product ${PRODUCT_SEARCH} in the Search Field
    Submit Search
    Page Must Contain the product