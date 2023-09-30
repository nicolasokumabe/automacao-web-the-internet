Dado("que estou na pagina Challenging DOM") do
  visit "http://the-internet.herokuapp.com/challenging_dom"
end

Quando("eu visualizo a pagina Challenging DOM") do
  expect(page).to have_css(".no-js")
end

Entao("devo ver o titulo {string}") do |title|
  expect(page).to have_css("h3", text: title)
end

Entao("devo ver um botao com o texto edit") do
  expect(page).to have_css("a[href='#edit']")
end

Entao("devo ver uma tabela com os cabeçalhos {string}, {string}, {string}, {string}, {string}, {string}, {string}") do |header1, header2, header3, header4, header5, header6, header7|
  table = find("table")

  expect(table).to have_content(header1)
  expect(table).to have_content(header2)
  expect(table).to have_content(header3)
  expect(table).to have_content(header4)
  expect(table).to have_content(header5)
  expect(table).to have_content(header6)
  expect(table).to have_content(header7)
end

Entao("devo ver pelo menos um botao com o texto delete") do
  expect(page).to have_css("a[href='#delete']")
end

Entao("devo ver uma imagem") do
  expect(page).to have_css("img")
end

Entao("devo ver uma figura geometrica na pagina") do
  expect(page).to have_css("#canvas")
end

Dado("o elemento {string} estah presente") do |element_id|
  expect(page).to have_css(element_id)
end

Quando("eu visualizo o botao azul") do
  expect(page).to have_css("a.button")
end

Quando("aperto o botao azul") do
  botao_azul = find("a.button[class='button']")
  @id_anterior_azul = botao_azul["id"]
  botao_azul.click
  botao_azul_apos_clicar = find("a.button[class='button']")
  @novo_id_azul = botao_azul_apos_clicar["id"]
end

Quando("eu visualizo o botao vermelho") do
  expect(page).to have_css("a.button.alert")
end

Quando("aperto o botao vermelho") do
  botao_vermelho = find("a.button.alert[class='button alert']")
  @id_anterior_vermelho = botao_vermelho["id"]
  botao_vermelho.click
  # click_link(class: "button alert")
  botao_vermelho_apos_clicar = find("a.button.alert[class='button alert']")
  @novo_id_vermelho = botao_vermelho_apos_clicar["id"]
end

Quando("eu visualizo o botao verde") do
  expect(page).to have_css("a.button.success")
end

Quando("aperto o botao verde") do
  botao_verde = find("a.button.success[class='button success']")
  @id_anterior_verde = botao_verde["id"]
  botao_verde.click
  # click_link(class: "button success")
  botao_verde_apos_clicar = find("a.button.success[class='button success']")
  @novo_id_verde = botao_verde_apos_clicar["id"]
end

Entao("o id do botao azul deve mudar") do
  expect(@novo_id_azul).not_to eq(@id_anterior_azul)
end

Entao("o id do botao vermelho deve mudar") do
  expect(@novo_id_vermelho).not_to eq(@id_anterior_vermelho)
end

Entao("o id do botao verde deve mudar") do
  expect(@novo_id_verde).not_to eq(@id_anterior_verde)
end
