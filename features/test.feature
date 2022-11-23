Feature: BDD framework demo

    Background:  Setup environment, datatest and others.
        When set config from json file "config.json"

    Scenario: Verify successful reponse when send login request
        And set:
            | username | password |
            | trang    | 123      |
        When url "https://eodu2u39v3kut67.m.pipedream.net"
        And api request from file "request/service_Login.json" is performed
        Then the status is 200
        And "${response.success}" is equal to "true"
