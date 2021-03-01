# encoding: utf-8
# language:pt

Dado('que estou listando os usuários {string}') do |url|
    @consult_user_api.consult(url)
end

Então("o response do serviço da consulta deverá ser {int}") do |code|
    expect(@consult_user_api.response_code).to eq code
end
  
E('deverão retornar as informações do mesmo') do
    @last_user_added = @consult_user_api.consult_last_user
    expect(@last_user_added["empregadoId"]).not_to be nil
    expect(@last_user_added["nome"]).not_to be nil
    expect(@last_user_added["sexo"]).not_to be nil
    expect(@last_user_added["cpf"]).not_to be nil
    expect(@last_user_added["cargo"]).not_to be nil
    expect(@last_user_added["admissao"]).not_to be nil
    expect(@last_user_added["salario"]).not_to be nil
    expect(@last_user_added["comissao"]).not_to be nil
    expect(@last_user_added["tipoContratacao"]).not_to be nil
end

E("deverá retornar a quantidade de usuários cadastrados") do
    @consult_user_api.quantity_all_user
end

Dado('que estou consultando o último usuário cadastrado {string}') do |url|
    @consult_user_api.last_user_registred(url)
end
