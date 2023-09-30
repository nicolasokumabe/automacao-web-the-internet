Dado("que estou na página de recuperação de senha") do
  visit "http://the-internet.herokuapp.com/forgot_password"
end
# Nao encontrei o email correto para funcionar a resposta ideal
Quando("eu insiro meu e-mail válido") do
  fill_in "email", with: "#{EMAIL}"
end

E("eu clico no botao {string}") do |botao|
  click_button(botao)
end
