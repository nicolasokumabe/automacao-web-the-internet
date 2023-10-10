Quando("leio o conteudo da pagina") do
  @page_content = page.text
end

Entao("devo verificar se nao ha erros gramaticais no texto") do
  errors = check_grammar(@page_content)

  if errors.empty?
    puts "Nenhum erro gramatical encontrado."
  else
    puts "Erros gramaticais encontrados:"
    errors.each do |error|
      puts "#{error.message} (Linha #{error.line}, Coluna #{error.column})"
    end
  end
end
