# encoding: utf-8
# language:pt

@desafio
@api

Funcionalidade: Cadastrar usuário
  Eu como usuário
  Quero realizar o cadastro do usuário
  Para poder validar a funcionalidade do serviço

  @cadastrar_usuario_sucesso_api
  Cenário: Cadastrar usuário com sucesso
    Dado que possuo um usuário para cadastro
    Quando enviar a solicitação post para o endereço "empregado/cadastrar"
    Então o retorno do serviço deverá ser 202
    E o response deverá possuir os campos "admissao" "cargo" "comissao" "cpf" "nome" "salario" "sexo" "tipoContratacao"
    E também deverá salvar o id, nome, cpf do usuário para realizar consultas futuras

  @cadastrar_usuario_dados_invalidos_api
  Esquema do Cenário: Tentar realizar cadastro de usuário com dados inválidos
    Dado que esteja enviando os dados "<admissao>" "<cargo>" "<comissao>" "<cpf>" "<nome>" "<salario>" "<sexo>" <departamento> "<tipocontratacao>"
    Quando enviar a solicitação post para o endereço "empregado/cadastrar"
    Então a mensagem deverá ser "<mensagem>"
    E o retorno do serviço deverá ser 400

    Exemplos:
      | admissao   | cargo         | comissao   | cpf            | nome      | salario   | sexo  | departamento | tipocontratacao | mensagem                                            |
      |            | analista      | 250.00,00  | 021.346.190-07 | joao      | 4.100,00  | m     |    2         | pj              | admissao: deve estar no padrão 31/12/2020           |
      | 04/02/2020 |               | 250.00,00  | 021.346.190-07 | paula     | 5.200,00  | m     |    1         | pj              | cargo: não utilizar números ou caracteres especiais |    
      | 05/02/2020 | desenvolvedor | 200        | 021.346.190-07 | maria     | 6.300,00  | m     |    3         | pj              | comissao: deve estar no padrão 1.000,00             |
      | 06/02/2020 | testado       | 250.00,00  |                | jose      | 7.400,00  | m     |    4         | pj              | cpf: deve estar no padrão 111.222.333-00            |
      | 07/02/2020 | qa            | 250.00,00  | 021.346.190-07 |           | 8.300,00  | m     |    1         | pj              | nome: não utilizar números ou caracteres especiais  |
      | 08/02/2020 | qa            | 250.00,00  | 021.346.190-07 | julio     |           | m     |    1         | pj              | salario: deve estar no padrão 1.000,00              |
      | 09/02/2020 | analista      | 250.00,00  | 021.346.190-07 | joao      | 9.240,00  | masc  |    1         | pj              | sexo: m, f ou i                                     |
      | 10/02/2020 | qa            | 250.00,00  | 021.346.190-07 | paulo     | 10.340,00 | m     |    0         | pj              | Departamento não cadastrado                           |
      | 11/02/2020 | gerente qa    | 250.00,00  | 021.346.190-07 | luis      | 4.200,00  | m     |    1         | pessoa física   | tipoContratacao: pj ou clt                          |  