#language:pt
@unidade
Funcionalidade: Unidades
  Validar o endereço da unidade do Distrito Federal, e tambem validar as unidades do shopping
  localizados atraves atraves do site Fleury.
  
  Contexto: Realizar validacoes das pesquisas atraves do site
    Dado que estou na home
  @brasilia
  Cenario: Validar endereço da unidade Brasilia
    Quando clico em unidade seleciono cidade "Brasilia"
    Entao valido o endereco "SEPS 715/915, Conjunto A, Bloco E - Asa Sul - DF, CEP: 70390-155" da unidade
  @sul
  Cenario: Validar unidades do shopping Jardim Sul
    Quando clico em unidade filtrando por unidades em shoppings
    Entao Valido o endereco "Avenida Giovanni Gronchi, 5819, Piso 1, Loja 206 A - Vila Andrade - SP, CEP: 05724-900" da unidade Jardim Sul 
  @analia
  Cenario: Validar unidades do shopping Analia Franco
    Quando clico em unidade filtrando por unidades em shoppings
    Entao Valido o endereco "Avenida Regente Feijó, 1739, Piso Acácia, Loja 37 E - Vila Regente Feijo - SP, CEP: 03342-900" da unidade Analia Franco 