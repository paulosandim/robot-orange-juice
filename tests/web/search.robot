*** Settings ***
Resource    ../../settings.resource

*** Test Cases ***
Pesquisar Produto
    Open Browser To Home Page
    Type Product Name in the Search Field
    Submit Search
    Page Must Contain the product