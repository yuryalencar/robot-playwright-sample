*** Settings ***
Documentation     Example to Youtube Teasy Class
...               Another line

Library           Browser

*** Variables ***

${BROWSER}        chromium
${HEADLESS}       false
${SCREEN_WIDTH}   1920
${SCREEN_HEIGHT}  1080

${BASE_URL}       https://www.google.com/

*** Test Cases ***
Search Teasy Solutions in google
  Open Google
  Type and Search Teasy Solutions
  Click in Teasy Solutions site

*** Keywords ***
Open Google
  New Browser    ${BROWSER}    headless=${HEADLESS}
  New Context    viewport={'width': ${SCREEN_WIDTH}, 'height': ${SCREEN_HEIGHT}}
  New Page       ${BASE_URL}

Type and Search Teasy Solutions
  Type Text     css=input[title*=esquisar]       Teasy Solutions     clear=True
  Press Keys    css=input[title*=esquisar]       Enter

Click in Teasy Solutions site
  Click         css=a[href*=solutions]
  Sleep         30