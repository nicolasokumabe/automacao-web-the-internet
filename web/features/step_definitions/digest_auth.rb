username = EMAIL
password = SENHA

def generate_digest_hash(username, password, realm, method, uri, nonce, cnonce, qop)
  ha1 = Digest::MD5.hexdigest("#{username}:#{realm}:#{password}")
  ha2 = Digest::MD5.hexdigest("#{method}:#{uri}")
  response = Digest::MD5.hexdigest("#{ha1}:#{nonce}:00000001:#{cnonce}:#{qop}:#{ha2}")
  "#{ha1}:#{nonce}:00000001:#{cnonce}:#{qop}:#{response}"
end

Before do
  @driver = Selenium::WebDriver.for :chrome
end

After do
  @driver.quit
end

Dado("que estou na página de Autenticação Digest") do
  url = "http://the-internet.herokuapp.com/digest_auth"
  @driver.get(url)
end

Quando("informo minhas credenciais válidas") do
  url = "http://#{username}:#{password}@the-internet.herokuapp.com/digest_auth"
  @driver.get(url)
end

Quando("clico no botão de login") do
  # Não é necessário clicar em um botão no caso de autenticação digest
  # O navegador irá autenticar automaticamente usando a URL com as credenciais
end

Então("devo ver a mensagem {string}") do |message|
  success_message = @driver.find_element(xpath: "//div[@id='content']/div[@class='example']/p")
  expect(success_message.text).to eq(message)
end
