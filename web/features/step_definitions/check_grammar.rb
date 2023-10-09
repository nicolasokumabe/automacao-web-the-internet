require "language_tool"

def check_grammar(text)
  tool = LanguageTool::Tool.new

  errors = tool.check(text)

  errors
end

example_text = "This is an example sentence with some grammatical errors."

errors = check_grammar(example_text)

if errors.empty?
  puts "Nenhum erro gramatical encontrado."
else
  puts "Erros gramaticais encontrados:"
  errors.each do |error|
    puts "#{error.message} (Linha #{error.line}, Coluna #{error.column})"
  end
end
