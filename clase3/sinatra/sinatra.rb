require 'sinatra'
require 'slim'

get '/' do
    slim :index
end

get '/hello-world' do
    "Hello World!"
end

get '/hola/:name' do
  @name = params[:name]
  slim :name
end

get '/formulario' do
  slim :form
end

post '/request' do
  @name = params[:name]
  @surname = params[:surname]
  @age = params[:age]
  @color = params[:color]
  slim :result
end
