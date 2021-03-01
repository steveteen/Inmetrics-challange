# encoding: utf-8
# language:pt

@desafio
@funcionario

Funcionalidade: Cadastro de funcionário
  Eu como usuário do sistema
  Quero realizar cadastro do funcionário
  Para poder ter controle e manutenção do mesmo

  @cadastrar_funcionario
  Esquema do Cenário: Realizar cadastro de um funcionário com sucesso
    Dado que esteja na página de empregados
    Quando clicar em novo funcionário
    E preencher os dados '<nome>', '<cpf>', '<cargo>', '<salario>', '<admissao>', '<sexo>', '<tipo_contratacao>'
    E enviar as informações
    Então deverá retornar uma mensagem "SUCESSO! Usuário cadastrado com sucesso" 

    Exemplos:
      | nome                     | cpf            | cargo   | salario | admissao   | sexo      | tipo_contratacao |
      | Leonardo Kunz Tramontina | 012.170.750-46 | Diretor | 1000    | 25/01/2020 | Masculino | CLT              | 
