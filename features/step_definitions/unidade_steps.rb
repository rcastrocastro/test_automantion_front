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

Quando('realizo o filtro por facilidades {string}') do |facilidade|
  @unidade.btn_unidade_click
  @unidade.filtro(facilidade)
end

Quando('seleciono a unidade {string} desejada') do |unidade|
  @unidade.detalhes_unidades(unidade)
end

Entao('Valido o endereco {string}') do |msg|
  expect(page).to have_content msg
end
