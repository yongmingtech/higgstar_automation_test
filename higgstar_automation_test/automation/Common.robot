*** Settings ***
Resource          Resource.robot
Resource          Library.robot

*** Keywords ***
Open Google Browser
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window
    Set Selenium Speed    ${SeleniumDelay}
    Wait Until Element Is Visible    name:q    ${DefaultTimeout}

Input the Keyword then Search
    [Arguments]    ${SearchKeyWord}
    Wait Until Element Is Visible    name:q    ${DefaultTimeout}
    Input Text    name:q    ${SearchKeyWord}
    Click Element    name=btnK
    Wait Until Element Is Not Visible    name=btnK

Go To Employee Benefits Page
    Click Element    partial link:員工福利

Go To higgsta Potral
    GO TO    https://www.higgstar.com/#/    #根據搜尋的結果，進入希格斯資訊的官方網站https://www.higgstar.com/
    Wait Until Element Is Visible    xpath=//*[@id="app"]/div/header/div/ul/li[4]/a    ${DefaultTimeout}

Go To Recruiting Page
    Click Element    partial link:人才招募

Go To Join Us Page
    Wait Until Element Is Visible    class:join-us-btn    ${DefaultTimeout}
    Click Element    class:join-us-btn
