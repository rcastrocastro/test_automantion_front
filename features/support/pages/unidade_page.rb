class UnidadePage
  include Capybara::DSL

  def estou_na_home
    find('#desktop-global-search')
  end

  def btn_unidade_click
    find(:xpath, "//a[contains(@href, '/unidades')]").click
  end

  def digite_endereco(cidade)
    find("input[placeholder='Digite um endereço']").set cidade
    send_keys(:enter)
    find('#button-see-on-map-2-brasilia').click
  end

  def filtro(opcao)
    find('#checkoox-select-facilities').click
    find('div[class*=checkbox-selectcomponentstyle__CheckboxSelectScrollStyled] > div[class*=checkbox-fieldcomponentstyle__CheckboxFieldStyled-sc]', text: opcao).click
  end

  def detalhes_unidades(unidades)
    find('div[class*=backgroundstyled__NeutralBackground-sc-1b1f5j3-3] > div > div:nth-child(2) > div > div', text: unidades).click
  end
end
