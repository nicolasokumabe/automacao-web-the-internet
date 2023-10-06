Entao("devo ser redirecionado para a pagina {string}") do |expected_url|
  expect(current_url).to eq(expected_url)
end
