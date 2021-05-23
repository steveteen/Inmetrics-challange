# encoding: utf-8
# language:pt

@desafio
@cadastrar_usuario

Funcionalidade: Cadastrar Usuário

  @verificar_link_cadastro_pelo_modal_login
  Cenário: Clicar no botão start e validar se a frase hello world aparece 
    Dado que esteja na home
    Quando clicar em START
    Então deverá aparecer a frase hello world 