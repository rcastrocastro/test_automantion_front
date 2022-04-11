#language:En

Feature: Validate address in Fleury
Scenario: Search unit in website
 Given I am on the Fleury homepage
 When I will search "Brasilia"
 Then I should see "A nossa Central de Atendimento"
