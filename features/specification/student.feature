Feature: Student testing

  @Smoke
  Scenario: GET aluno na listagem de matricula
    Given que eu tenha as informações do aluno para realizar a consulta
    When Eu realizar um GET para consulta do aluno
    Then Eu terei o status code 200

  @Smoke
  Scenario: POST aluno na listagem de matricula
    Given que eu tenha as informações do aluno para realizar a criação 
    When Eu realizar um POST para criação do aluno
    Then Eu terei o status code 201

  @Smoke
  Scenario: PATCH aluno na listagem de matricula
    Given que eu tenha as informações do aluno para realizar a atualização 
    When Eu realizar um PATCH para atualização do aluno
    Then Eu terei o status code 200

  @Smoke
  Scenario: DELETE aluno na listagem de matricula
    Given que eu tenha as informações do aluno para realizar a exclusão
    When Eu realizar um DELETE para exclusão do aluno
    Then Eu terei o status code 200ß