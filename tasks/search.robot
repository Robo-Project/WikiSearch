*** Settings ***
Documentation    Resources for RoboBoy
Library          SeleniumLibrary

*** Variables *** 
${BROWSER}       Chrome
${DELAY}         0
${WIKIPEDIA}     https://en.wikipedia.org/
${CONTENT}
${SEARCH}


*** Tasks ***
Search Wikipedia
  Open Browser           ${WIKIPEDIA}/wiki/${SEARCH}    ${BROWSER}
  ${CONTENT}=  Get Text  class:mw-parser-output
  Log                    ${CONTENT}
  [Teardown]             Close Browser


