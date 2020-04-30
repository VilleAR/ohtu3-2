Feature: User can log in with valid username/password-combination

    Scenario: user can login with correct password
       Given command login is selected
       When  username "pekka" and password "akkep" are entered
       Then  system will respond with "logged in"
    Scenario: user can not login with incorrect password
       Given command login is selected
       When  username "pekka" and password "ekkap" are entered
       Then  system will respond with "wrong username or password"

    Scenario: nonexistent user can not login to 
       Given command login is selected
       When  username "ville" and password "elliv" are entered
       Then  system will respond with "wrong username or password"