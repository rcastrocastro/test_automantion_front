Dado('que estou na home') do
  @home.home
  @unidade.estou_na_home
end

Quando('clico em unidade seleciono cidade {string}') do |cidade|
  @unidade.btn_unidade_click
  @unidade.digite_endereco(cidade)
end

Entao('valido o endereco {string} da unidade') do |endereco|
  expect(page).to have_content endereco
end

Quando('clico em unidade filtrando por unidades em shoppings') do
  @unidade.btn_unidade_click
  @unidade.filtro
end

Entao('Valido o endereco {string} da unidade Jardim Sul') do |shopping_sul|
  @unidade.jardim_sul
  expect(page).to have_content shopping_sul
end

Entao('Valido o endereco {string} da unidade Analia Franco') do |shopping_analia|
  @unidade.analia
  expect(page).to have_content shopping_analia
end