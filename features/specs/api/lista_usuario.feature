# encoding: utf-8
# language:pt

@desafio
@api

Funcionalidade: Listar usuários
  Eu como usuário
  Quero consultar os usuários cadastrados
  Para poder validar o serviço de busca

  @listar_todos_usuarios_api
  Cenário: Listar todos os usuários
    Dado que estou listando os usuários "empregado/list_all"
    Então o response do serviço da consulta deverá ser 200
    E deverá retornar a quantidade de usuários cadastrados

  @listar_ultimo_usuario_cadastrado_api
  Cenário: Listar último usuário cadastrado
    Dado que estou consultando o último usuário cadastrado "empregado/list"
    Então o response do serviço da consulta deverá ser 202
    E deverão retornar as informações do mesmo
    