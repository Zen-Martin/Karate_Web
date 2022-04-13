Feature: Test Website Nocibe

  Background:
    * def nocibeHomepage = "https://www.nocibe.fr/"
    * configure driver = web.navigateur

  Scenario: make a search
    * def searchBar = "#search_field"

    Given driver nocibeHomepage
    * driver.maximize()
    * waitFor(searchBar).click()
    And driver.input(searchBar, "Parfum")
    * driver.input(searchBar, Key.ENTER)
    Then waitFor('{^span}Parfum Femme')
    And waitFor('{^span}Parfum Femme')
