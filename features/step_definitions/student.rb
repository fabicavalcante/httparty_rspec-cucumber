  Given("que eu tenha as informações do aluno para realizar a consulta") do

  end

  Given("que eu tenha as informações do aluno para realizar a criação") do
    @body = {
        "nome": "Charlies",
        "sobrenome": "Ross",
        "email": "walter@gmail.com",
        "curso": "Tecnologia da Informação",
        "periodo": "5",
      }.to_json
  end

  Given("que eu tenha as informações do aluno para realizar a atualização") do
    @body = {
        "nome": "Charlies",
        "sobrenome": "Rossi",
        "email": "walter@gmail.com",
        "curso": "Tecnologia da Informação",
        "periodo": "5",
      }.to_json
  end

  Given("que eu tenha as informações do aluno para realizar a exclusão") do
    @body = {
        "id": 52
      }.to_json
  end
  
  When("Eu realizar um GET para consulta do aluno") do
    @response = RegisterService.get '/api/v1/students/1'
  end
  
  When("Eu realizar um POST para criação do aluno") do
    @response = RegisterService.post '/api/v1/students', body: @body
  end

  When("Eu realizar um PATCH para atualização do aluno") do
    @response = RegisterService.patch '/api/v1/students/40', body: @body
  end

  When("Eu realizar um DELETE para exclusão do aluno") do
    @response = RegisterService.delete('/api/v1/students/52', body: @body)
  end

  Then("Eu terei o status code {int}") do |int|
    expect(@response.code).to eq (int)
  end

#   Then("Eu terei o status code {int}") do |int|
#     puts @get_students.body
#     expect(@get_students.code).to eq 200
#   end


# Dado('que eu faça um GET no endpoint clientes') do
#     @get_clientes = RegisterService.get '/api/v1/students/1'
#   end
  
#   Entao('o retorno dele será todos os clientes cadastrados') do
#     puts @get_clientes.body
#     expect(@get_clientes.code).to eq 200
#   end

