# encoding: utf-8
# language:pt

Dado("que possuo um usuário para cadastro") do
    @new_user_api.data_new_user
end

Quando("enviar a solicitação post para o endereço {string}") do |url|
    @new_user_api.post_data(url)
end

Então('o retorno do serviço deverá ser {int}') do |code|
    expect(@new_user_api.response_code).to eq code
end

Então('o response deverá possuir os campos {string} {string} {string} {string} {string} {string} {string} {string}') do |admissao, cargo, comissao, cpf, nome, salario, sexo, tipocontratacao|
    @data_response = @new_user_api.response_data
    expect(@data_response[admissao]).not_to be nil
    expect(@data_response[cargo]).not_to be nil
    expect(@data_response[comissao]).not_to be nil
    expect(@data_response[cpf]).not_to be nil
    @cpf_user = @data_response[cpf]
    expect(@data_response[nome]).not_to be nil
    @name_user = @data_response[nome]
    expect(@data_response[salario]).not_to be nil
    expect(@data_response[sexo]).not_to be nil
    expect(@data_response[tipocontratacao]).not_to be nil
end

E("também deverá salvar o id, nome, cpf do usuário para realizar consultas futuras") do
    @new_user_api.record_user_response
end

Dado('que esteja enviando os dados {string} {string} {string} {string} {string} {string} {string} {int} {string}') do |admissao, cargo, comissao, cpf, nome, salario, sexo, departamento, tipocontratacao|
    @new_user_api.data_new_user_invalid(admissao, cargo, comissao, cpf, nome, salario, sexo, departamento, tipocontratacao)
end

Então('a mensagem deverá ser {string}') do |message|
    expect(@new_user_api.response_data).to include message
end

