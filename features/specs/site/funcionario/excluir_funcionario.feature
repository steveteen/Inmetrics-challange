# encoding: utf-8
# language:pt

@desafio
@funcionario

Funcionalidade: Excluir cadastro do funcionário
  Eu como usuário do sistema
  Quero realizar exclusão do cadastro do funcionário
  Para poder ter controle e manutenção do mesmo

  @excluir_funcionario
  Cenário: Realizar exclusão do usuário
    Dado que esteja na página de empregados
    Quando pesquisar pelo usuário "Leonardo"
    E clicar no ícone de exclusão do primeiro usuário encontrado
    Então deverá retornar uma mensagem "SUCESSO! Funcionário removido com sucesso" 