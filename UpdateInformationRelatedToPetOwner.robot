*** Settings ***
Documentation                               View information pertaining to pet owner
Library                                     Selenium2Library
Test Setup                                  Open Browser                                            ${URL_TO_PETCLINIC}                                   Chrome
Test Teardown                               Close All Browsers

*** Variable ***
${FIND_OWNER_NAVIGATION_BAR_LINK}           xpath=//*[@id="main-navbar"]/ul/li[3]/a/span[1]
${FIND_OWNER_BUTTON}                        xpath=//*[@id="search-owner-form"]/div[2]/div/button
${FIRST_LINK_FROM_OWNER'S_LIST}             xpath=//*[@id="vets"]/tbody/tr[1]/td[1]/a
${URL_TO_PETCLINIC}                         http://localhost:8080
${EDIT_OWNER_BUTTON}                        xpath=/html/body/div/div/a[1]
${INPUT_ELEMENT_FIRST_NAME}                 xpath=//*[@id="firstName"]
${INPUT_ELEMENT_LAST_NAME}                  xpath=//*[@id="lastName"]
${INPUT_ELEMENT_ADDRESS}                    xpath=//*[@id="address"]
${INPUT_ELEMENT_CITY}                       xpath=//*[@id="city"]
${INPUT_ELEMENT_TELEPHONE}                  xpath=//*[@id="telephone"]
${UPDATE_OWNER_BUTTON}                      xpath=//*[@id="add-owner-form"]/div[2]/div/button
${ADD_OWNER_BUTTON}                         xpath=/html/body/div/div/a
${OWNER_NAME_LABEL}  xpath=/html/body/div/div/table[1]/tbody/tr[1]/td/b
*** Test Cases ***
Pet Owner's Name Can Be Updated
                                            Click Element                                           ${FIND_OWNER_NAVIGATION_BAR_LINK}
                                            Click Button                                            ${FIND_OWNER_BUTTON}
                                            Click Link                                              ${FIRST_LINK_FROM_OWNER'S_LIST}
                                            Click Element                                           ${EDIT_OWNER_BUTTON}
                                            Input Text                                              ${INPUT_ELEMENT_FIRST_NAME}                           FIRST
                                            Input Text                                              ${INPUT_ELEMENT_LAST_NAME}                            LAST
                                            Click Button                                            ${UPDATE_OWNER_BUTTON}
                                            Element Text Should Be                                  ${OWNER_NAME_LABEL}                            FIRST LAST
New Pet Owner Can be Added to the System
                                            Click Element                                           ${FIND_OWNER_NAVIGATION_BAR_LINK}
                                            Click Element                                           ${ADD_OWNER_BUTTON}
                                            Input Text                                              ${INPUT_ELEMENT_FIRST_NAME}                           Adriel
                                            Input Text                                              ${INPUT_ELEMENT_LAST_NAME}                            Jones
                                            Input Text                                              ${INPUT_ELEMENT_ADDRESS}                              120 E 87th Street New York 10128
                                            Input Text                                              ${INPUT_ELEMENT_CITY}                                 New York
                                            Input Text                                              ${INPUT_ELEMENT_TELEPHONE}                            0534234434
                                            Click Element                                           ${UPDATE_OWNER_BUTTON}
