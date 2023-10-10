Quando("clico na opcao de carregar pixels aleatoriamente em {string}") do |site|
  click_link("click here", href: "/shifting_content/#{site}?mode=random")
end

Quando("clico na opcao de especificar um numero diferente de pixels em {string}") do |site|
  click_link("click here", href: "/shifting_content/#{site}?pixel_shift=100")
end

Quando("clico para fazer as duas coisas juntas em {string}") do |site|
  click_link("click here", href: "/shifting_content/#{site}?mode=random&pixel_shift=100")
end

Quando("clico para acrescentar uma nova imagem simples em {string}") do |site|
  click_link("click here", href: "/shifting_content/#{site}?image_type=simple")
end

Quando("eu capturo a ordem atual dos paragrafos") do
  @ordem_atual = page.all(".large-6.columns.large-centered p").map(&:text)
end

Quando("eu atualizo a pagina") do
  visit current_url

  # visit "/shifting_content/list"
end

Quando("eu capturo a nova ordem dos paragrafos") do
  @nova_ordem = page.all(".large-6.columns.large-centered p").map(&:text)
end

Entao("a ordem atual dos paragrafos não deve ser igual ah nova ordem dos paragrafos") do
  if @ordem_atual.any? && @nova_ordem.any?
    expect(@ordem_atual).not_to eq(@nova_ordem)
  end
end
