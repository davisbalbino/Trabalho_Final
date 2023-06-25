Feature: Testes com o site Sauce
Scenario: login com credenciais válidas 
    Given driver 'https://www.saucedemo.com/'
    And input("//*[@id='user-name']","standard_user")
    And input("//*[@id='password']",'secret_sauce')
    When click("//*[@id='login-button']")
    Then match driver.title == "Swag Labs"

Scenario: Login com credenciais inválidas
    Given driver 'https://www.saucedemo.com/'
    And input("//*[@id='user-name']","standard")
    And input("//*[@id='password']",'secret')
    When click("//*[@id='login-button']")
    Then match text('/html/body/div[1]/div/div[2]/div[1]/div/div/form/div[3]/h3/text()') == "Epic sadface: Username and password do not match any user in this service"

Scenario: Acrescentando 3  produtos ao carrinho e verificando se mostra a quaitidade 3
    Given driver 'https://www.saucedemo.com/'
    And input("//*[@id='user-name']","standard_user")
    And input("//*[@id='password']",'secret_sauce')
    When click("//*[@id='login-button']")
    And click("/html/body/div[1]/div/div/div[2]/div/div/div/div[1]/div[2]/div[2]/button")
    And click("/html/body/div[1]/div/div/div[2]/div/div/div/div[2]/div[2]/div[2]/button")
    And click("/html/body/div[1]/div/div/div[2]/div/div/div/div[3]/div[2]/div[2]/button")
    Then match value('/html/body/div[1]/div/div/div[1]/div[1]/div[3]/a/span') == 3

    

    


 