# encoding: utf-8
# language:pt

@desafio
@cadastrar_usuario

Funcionalidade: Cadastrar Usuário

  @verificar_link_cadastro_pelo_modal_login
  Cenário: Verificar redirecionamento do "cadastre-se" pelo modal de login 
    Dado que esteja na página de login do site
    Quando clicar em cadastre-se no modal de login
    Então deverá redirecionar para a página de cadastro
    E deverá retornar um modal de cadastro 

  @verificar_link_cadastro_pelo_cabecalho
  Cenário: Verificar redirecionamento do "cadastre-se" pelo cabeçalho do site
    Dado que esteja na página de login do site
    Quando clicar em cadastre-se no cabeçalho
    Então deverá redirecionar para a página de cadastro
    E deverá retornar um modal de cadastro 

  @cadastrar_usuario_sucesso
  Cenário: Cadastrar usuário com sucesso 
    Dado que esteja no modal de login de cadastro
    Quando preencher o cadastro 
    Então deverá ser redirecionado para o login

  @validar_campos_cadastro_vazios
  Cenário: Verificar cadastro com campos vazios
    Dado que esteja no modal de login de cadastro
    Quando clicar em cadastrar deixando os campos vazios
    Então deverão retornar alertas de campo obrigatório

  @validar_senhas_diferentes
  Cenário: Verificar cadastro com repetição de senha incorreta
    Dado que esteja no modal de login de cadastro
    Quando preencher um nome 
    E preencher a senha "123456"
    E confirmar a senha "654321"
    E realizar o cadastro
    Então deverá retornar uma mensagem "Senhas não combinam"

  @cadastrar_usuario_invalido
  Cenário: Realizar cadastro com usuário já existente
    Dado que esteja no modal de login de cadastro
    E preencher o nome "testeautomacao"
    Então deverá retornar uma mensagem "Usuário já cadastrado"