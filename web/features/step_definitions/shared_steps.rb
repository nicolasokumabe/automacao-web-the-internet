Quando("informo minhas credenciais válidas") do
  system("xdotool type '#{EMAIL}'")

  system("xdotool key Tab")

  system("xdotool type '#{SENHA}'")

  system("xdotool key Tab")

  # visit "http://#{EMAIL}:#{SENHA}@the-internet.herokuapp.com/"basic-ou-digest"_auth"

end

Quando("não informo minhas credenciais válidas") do
  system("xdotool key Tab")

  system("xdotool key Tab")
end

Quando("clico no botão cancelar") do
  system("xdotool key Return")
end

Quando("clico no botão de login") do
  system("xdotool key Tab")

  system("xdotool key Return")
end
