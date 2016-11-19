*** Settings ***
Documentation                        View information pertaining to pet owner
Library                              Selenium2Library
*** Variable ***
${FIND_OWNER_NAVIGATION_BAR_LINK}    //*[@id="main-navbar"]/ul/li[3]/a/span[1]
*** Test Cases ***
Test title
                                     Open Browser                                 http://localhost:8080                                 Chrome
                                     Click Element                                ${FIND_OWNER_NAVIGATION_BAR_LINK}
                                     Click Button                                 //*[@id="search-owner-form"]/div[2]/div/button
                                     Click Link                                   //*[@id="vets"]/tbody/tr[1]/td[1]/a
                                     Click Element                                xpath=/html/body/div/div/a[1]
                                     ${old_firstname}=                            Get Value                                             xpath=//*[@id="firstName"]
                                     ${new_firstname}=                            Catenate                                              ${old_firstname}                    Elsa
                                     Input Text                                   xpath=//*[@id="firstName"]                            ${new_firstname}
                                     Click Button                                 xpath=//*[@id="add-owner-form"]/div[2]/div/button
                                     Close Browser
Add new pet owner to the system
                                     Open Browser                                 http://localhost:8080                                 Chrome
                                     Click Element                                //*[@id="main-navbar"]/ul/li[3]/a/span[1]
                                     Click Element                                xpath=/html/body/div/div/a
                                     Input Text                                   //*[@id="firstName"]                                  Adriel
                                     Input Text                                   //*[@id="lastName"]                                   Jones
                                     Input Text                                   //*[@id="address"]                                    120 E 87th Street New York 10128
                                     Input Text                                   //*[@id="city"]                                       New York
                                     Input Text                                   //*[@id="telephone"]                                  0534234434
                                     Click Element                                xpath =//*[@id="add-owner-form"]/div[2]/div/button
