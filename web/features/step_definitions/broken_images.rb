Dado("que estou na pagina Broken Images") do
  visit "http://the-internet.herokuapp.com/broken_images"
end

Quando("verifico se ha imagens quebradas") do
  # ha imagens quebradas
end

Entao("eu vejo uma ou mais imagens quebradas") do
  imagens_quebradas = []

  all("img").each do |imagem|
    if imagem["naturalWidth"].to_i <= 0
      imagens_quebradas << imagem[:src]
    end
  end

  expect(imagens_quebradas).not_to be_empty, "Nenhuma imagem quebrada foi encontrada:\n#{imagens_quebradas.join("\n")}"
end

# Caso eu queira detectar nenhuma imagem falha (vida real)
# Entao("eu nao deveria ver imagens quebradas") do
#   all("img").each do |imagem|
#     expect(imagem["naturalWidth"].to_i).to be > 0, "Imagem quebrada encontrada: #{imagem[:src]}"
#   end
# end
