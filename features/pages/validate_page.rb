class ValidatePage < SitePrism::Page
  element :validate_page_unidade, 

  def clicar_btn_unidade
    btn_unidade.click
    ValidatePage.new
  end

  def get_endereço_pagina
    page.html
  end
end
end   
    