Entao("devo ver a mensagem de erro de JavaScript") do
  expect(page).to have_content("This page has a JavaScript error in the onload event. This is often a problem to using normal Javascript injection techniques.")
end
