class UnidadePage
    include Capybara::DSL

  def estou_na_home
    return find("#desktop-global-search")
  end

  def btn_unidade_click
    find(:xpath, "//a[contains(@href, '/unidades')]").click
  end

  def digite_endereco(cidade)
    find("input[placeholder='Digite um endereço']").set cidade
    send_keys(:enter)
    find("#button-see-on-map-2-brasilia").click
  end

  def filtro 
    find("#checkoox-select-facilities").click
    find(:xpath, "//*[@id='gatsby-focus-wrapper']/div[8]/div[3]/div[3]/div[1]/div[2]/div/div[6]/label/div/div/div[3]/label").click
  end

  def jardim_sul
    find("#button-see-on-map-2-shopping-jardim-sul").click
  end

  def analia  
    find("#button-see-on-map-2-shopping-analia-franco").click
  end
end