Dado("que acesso a página Challenging DOM") do
  visit "http://the-internet.herokuapp.com/challenging_dom"
end

Quando("eu visualizo a página Challenging DOM") do
  expect(page).to have_css(".no-js")
end

Então("devo ver o título {string}") do |title|
  expect(page).to have_css("h3", text: title)
end

Então("devo ver um botão com o texto edit") do
  expect(page).to have_css("a[href='#edit']")
end

Então("devo ver uma tabela com os cabeçalhos {string}, {string}, {string}, {string}, {string}, {string}, {string}") do |header1, header2, header3, header4, header5, header6, header7|
  table = find("table")

  expect(table).to have_content(header1)
  expect(table).to have_content(header2)
  expect(table).to have_content(header3)
  expect(table).to have_content(header4)
  expect(table).to have_content(header5)
  expect(table).to have_content(header6)
  expect(table).to have_content(header7)
end

Então("devo ver pelo menos um botão com o texto delete") do
  expect(page).to have_css("a[href='#delete']")
end

Então("devo ver uma imagem") do
  expect(page).to have_css("img")
end

Então("devo ver uma figura geométrica na página") do
  expect(page).to have_css("#canvas")
end

Dado("o elemento {string} está presente") do |element_id|
  expect(page).to have_css(element_id)
end

Quando("eu visualizo o botão azul") do
  expect(page).to have_css("a.button")
end

Quando("aperto o botão azul") do
  botao_azul = find("a.button[class='button']")
  @id_anterior_azul = botao_azul["id"]
  botao_azul.click
  botao_azul_apos_clicar = find("a.button[class='button']")
  @novo_id_azul = botao_azul_apos_clicar["id"]
end

Quando("eu visualizo o botão vermelho") do
  expect(page).to have_css("a.button.alert")
end

Quando("aperto o botão vermelho") do
  botao_vermelho = find("a.button.alert[class='button alert']")
  @id_anterior_vermelho = botao_vermelho["id"]
  botao_vermelho.click
  # click_link(class: "button alert")
  botao_vermelho_apos_clicar = find("a.button.alert[class='button alert']")
  @novo_id_vermelho = botao_vermelho_apos_clicar["id"]
end

Quando("eu visualizo o botão verde") do
  expect(page).to have_css("a.button.success")
end

Quando("aperto o botão verde") do
  botao_verde = find("a.button.success[class='button success']")
  @id_anterior_verde = botao_verde["id"]
  botao_verde.click
  # click_link(class: "button success")
  botao_verde_apos_clicar = find("a.button.success[class='button success']")
  @novo_id_verde = botao_verde_apos_clicar["id"]
end

Então("o id do botão azul deve mudar") do
  expect(@novo_id_azul).not_to eq(@id_anterior_azul)
end

Então("o id do botão vermelho deve mudar") do
  expect(@novo_id_vermelho).not_to eq(@id_anterior_vermelho)
end

Então("o id do botão verde deve mudar") do
  expect(@novo_id_verde).not_to eq(@id_anterior_verde)
end
