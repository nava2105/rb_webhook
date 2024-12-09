require 'sinatra'
require 'json'

# CORS enabler Middleware
before do
  response.headers['Access-Control-Allow-Origin'] = '*'
end

options '*' do
  response.headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE, OPTIONS'
  response.headers['Access-Control-Allow-Headers'] = 'Content-Type, Accept'
  200
end

# Webhook endpoint
get '/webhook' do
  content_type :json
  { message: 'Hello World from Webhook in Ruby' }.to_json
end

# serve Swagger UI
get '/docs' do
  redirect 'https://petstore.swagger.io/?url=http://localhost:4567/swagger.yaml'
end

# Swagger yaml file
get '/swagger.yaml' do
  content_type 'application/x-yaml'
  File.read('swagger.yaml')
end

# server configuration
set :port, 4567
set :bind, '0.0.0.0'

puts "Server running in: http://localhost:#{settings.port}/webhook"
puts "Swagger documentation in: http://localhost:#{settings.port}/docs"