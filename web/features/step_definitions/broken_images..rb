Dado("que acesso a página Broken Images") do
  visit "http://the-internet.herokuapp.com/broken_images"
end

Quando("verifico se há imagens quebradas") do
  # Há imagens quebradas, o teste deve falhar.
end

Então("eu não deveria ver imagens quebradas") do
  all("img").each do |imagem|
    expect(imagem["naturalWidth"].to_i).to be > 0, "Imagem quebrada encontrada: #{imagem[:src]}"
  end
end
