# features/step_definitions/dynamic_content.rb
Dado("que estou na página de dynamic content") do
  visit "http://the-internet.herokuapp.com/dynamic_content"
end

Quando("verifico todas as imagens atuais") do
  @imagens = all(".large-2.columns img")

  @valores_anteriores_src = []

  @imagens.each do |imagem|
    @valores_anteriores_src << imagem["src"]
  end
end

Quando("recarrego a página") do
  visit current_url
end

Então("devo verificar se as imagens na página foram alteradas") do
  @imagens = all(".large-2.columns img")
  imagens_nao_modificadas = 0

  # Itere sobre cada imagem e verifique se o valor do atributo src mudou
  @imagens.each_with_index do |imagem, index|
    if imagem["src"] == @valores_anteriores_src[index]
      imagens_nao_modificadas += 1
    end
  end

  # Verifique se duas ou mais imagens não foram modificadas
  expect(imagens_nao_modificadas).to be <= 1
end

Quando("verifico todos os textos de imagens atuais") do
  @textos_anteriores = []
  all(".large-10.columns").each do |texto|
    @textos_anteriores << texto.text
  end
end

Então("devo verificar se todos os campos de texto das imagens são diferentes dos textos anteriores") do
  textos_atuais = []
  all(".large-10.columns").each do |texto|
    textos_atuais << texto.text
  end

  expect(textos_atuais).not_to eq(@textos_anteriores)
end
