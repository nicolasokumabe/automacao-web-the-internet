Entao("devo ver uma mensagem de notificação exibida") do
  expect(page).to have_selector(".flash")
end
