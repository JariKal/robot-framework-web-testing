*** Settings ***
Documentation     Web UI test for ALT Zone news using Microsoft Edge and SeleniumLibrary.
Library           SeleniumLibrary
Suite Teardown    Close All Browsers

*** Variables ***
${URL}            https://dev.altzone.fi/fi
${NEWS_URL}       https://dev.altzone.fi/fi/news
${BROWSER}        Edge
${NEWS_CARDS}     xpath=//a[contains(@class, 'NewsCardLink')]

*** Test Cases ***
Verify First Three News Articles Open Correctly
    [Documentation]    Opens the first three news articles and verifies each article URL.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sulje Evästeet
    Avaa Uutiset

    Wait Until Element Is Visible    ${NEWS_CARDS}    timeout=10s
    ${maara}=    Get Element Count    ${NEWS_CARDS}
    Log To Console    Uutiskortteja löytyi: ${maara}
    Should Be True    ${maara} >= 3    Uutissivulla tulee olla vähintään kolme uutiskorttia.

    FOR    ${i}    IN RANGE    1    4
        Avaa Uutinen Indeksillä    ${i}
        Go To    ${NEWS_URL}
        Wait Until Element Is Visible    ${NEWS_CARDS}    timeout=10s
    END

*** Keywords ***
Sulje Evästeet
    [Documentation]    Rejects the cookie consent dialog.
    Wait Until Element Is Visible    id=rcc-decline-button    timeout=10s
    Click Element    id=rcc-decline-button

Avaa Uutiset
    [Documentation]    Navigates directly to the Finnish news listing.
    Go To    ${NEWS_URL}
    Wait Until Location Contains    /fi/news    timeout=10s

Avaa Uutinen Indeksillä
    [Arguments]    ${indeksi}
    [Documentation]    Opens a news card and verifies navigation to its article ID.
    ${uutinen}=    Set Variable    xpath=(//a[contains(@class, 'NewsCardLink')])[${indeksi}]
    Wait Until Element Is Visible    ${uutinen}    timeout=10s
    Scroll Element Into View    ${uutinen}
    Wait Until Element Is Enabled    ${uutinen}    timeout=10s
    ${linkki}=    Get Element Attribute    ${uutinen}    href
    ${uutis_id}=    Evaluate    $linkki.rstrip('/').split('/')[-1]
    Log To Console    Avataan uutinen ${indeksi}, ID: ${uutis_id}
    Click Element    ${uutinen}
    Wait Until Location Contains    /news/${uutis_id}    timeout=10s
    Log To Console    Uutinen ${indeksi} avautui oikein.
