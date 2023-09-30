Dado("que estou na pagina de dynamic content") do
  visit "http://the-internet.herokuapp.com/dynamic_content"
end

Quando("verifico todas as imagens atuais") do
  @imagens = all(".large-2.columns img")

  @valores_anteriores_src = []

  @imagens.each do |imagem|
    @valores_anteriores_src << imagem["src"]
  end
end

Quando("recarrego a pagina") do
  visit current_url
end

Entao("devo verificar se as imagens na pagina foram alteradas") do
  @imagens = all(".large-2.columns img")
  imagens_nao_modificadas = 0

  @imagens.each_with_index do |imagem, index|
    if imagem["src"] == @valores_anteriores_src[index]
      imagens_nao_modificadas += 1
    end
  end

  expect(imagens_nao_modificadas).to be <= 2
end

Quando("verifico todos os textos de imagens atuais") do
  @textos_anteriores = []
  all(".large-10.columns").each do |texto|
    @textos_anteriores << texto.text
  end
end

Entao("devo verificar se todos os campos de texto das imagens sao diferentes dos textos anteriores") do
  textos_atuais = []
  all(".large-10.columns").each do |texto|
    textos_atuais << texto.text
  end

  expect(textos_atuais).not_to eq(@textos_anteriores)
end

Dado("que eu clico no botao {string}") do |botao|
  click_link(botao)
end

Entao("devo verificar se pelo menos um texto de imagem foi modificado") do
  textos_de_imagem = all(".large-10.columns")

  texto_modificado = textos_de_imagem.any? do |texto|
    !@textos_anteriores.include?(texto.text)
  end

  expect(texto_modificado).to be(true)
end
