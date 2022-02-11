*** Settings ***
Resource          Common.robot

*** Test Cases ***
Go_To_Google_Portal_Then_Search
    Open Google Browser    # 使用 Chrome 瀏覽器開啟 https://www.google.com.tw/ \n
    Input the Keyword then Search    希格斯資訊    #搜尋 - 希格斯資訊
    Go To higgsta Potral    #根據搜尋的結果，進入希格斯資訊的官方網站
    Go To Recruiting Page    #進入人才招募 頁面
    Go To Join Us Page    #點選加入我們
    Switch Window    MAIN    #回到公司網站從Menu
    Go To Employee Benefits Page    #進入員工福利 頁面
    [Teardown]    Close Browser
