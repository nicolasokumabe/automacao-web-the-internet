Quando("eu passar o mouse sobre a primeira imagem") do
  # figura = find(".figure", text: "name: user1", visible: false)
  # figura.hover

  foto_usuario(1)
end

Quando("eu passar o mouse sobre a segunda imagem") do
  # figura = find(".figure", text: "name: user2", visible: false)
  # figura.hover

  foto_usuario(2)
end

Quando("eu passar o mouse sobre a terceira imagem") do
  # figura = find(".figure", text: "name: user3", visible: false)
  # figura.hover

  foto_usuario(3)
end

Entao("devo ver o texto {string}") do |texto|
  expect(page).to have_content(texto)
end

def foto_usuario(numero)
  figura = find(".figure", text: "name: user#{numero}", visible: false)
  figura.hover
end
