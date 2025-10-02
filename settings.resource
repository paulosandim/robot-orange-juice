*** Settings ***
Library    SeleniumLibrary

Resource    ${RESOURCES_DIR}/commom.resource
Resource    ${RESOURCES_DIR}/home.resource
Resource    ${RESOURCES_DIR}/search.resource
Resource    ${RESOURCES_DIR}/offer.resource


*** Variables ***
${CHROME_OPTIONS}    add_argument("--start-maximized");add_experimental_option("excludeSwitches", ["enable-logging"])

${URL_BASE}    https://www.mercadolivre.com.br/
${BROWSER}    chrome

${RESOURCES_DIR}    resources