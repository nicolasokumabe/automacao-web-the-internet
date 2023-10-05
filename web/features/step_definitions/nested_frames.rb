Quando("eu verificar o conteudo do frame superior do meio") do
  within_frame("frame-top") do
    within_frame("frame-middle") do
      @frame_content = find("body").text
    end
  end
end

Quando("devo verificar o conteúdo do frame superior esquerdo") do
  within_frame("frame-top") do
    within_frame("frame-left") do
      @frame_content = find("body").text
    end
  end
end

Quando("devo verificar o conteudo do frame superior direito") do
  within_frame("frame-top") do
    within_frame("frame-right") do
      @frame_content = find("body").text
    end
  end
end

Quando("devo verificar o conteudo do frame inferior") do
  within_frame("frame-bottom") do
    @frame_content = find("body").text
  end
end

Então("devo ver o texto do frame {string}") do |expected_text|
  expect(@frame_content).to include(expected_text)
end
