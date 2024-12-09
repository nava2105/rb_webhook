require 'sinatra'
require 'json'

# Endpoint para el webhook que devuelve un Hola Mundo en JSON
get '/webhook' do
  content_type :json
  { message: 'Hola Mundo desde Webhook en Ruby' }.to_json
end

# Imprime en consola la URL donde está corriendo
set :port, 4567  # Puerto predeterminado de Sinatra
set :bind, '0.0.0.0'

puts "Servidor corriendo en: http://localhost:#{settings.port}/webhook"
