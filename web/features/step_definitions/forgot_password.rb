Dado("que estou na pagina de recuperação de senha") do
  visit "http://the-internet.herokuapp.com/forgot_password"
end
# Nao encontrei o email correto para funcionar a resposta ideal
Quando("eu insiro meu e-mail valido") do
  fill_in "email", with: "#{EMAIL}"
end
