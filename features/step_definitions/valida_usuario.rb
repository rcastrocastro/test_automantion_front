

Given(/^I am on the Fleury homepage$/) do
  visit '/unidades'
  @home = ValidatePage.new
end

When(/^I will search "Brasilia"$/) do
  page.find('#anchor-unit-cell-brasilia', visible: true).click
end

Then(/^I should see "A nossa Central de Atendimento"$/) do
  expect(page).to have_title 'SEPS 715/915, Conjunto A, Bloco'
end

