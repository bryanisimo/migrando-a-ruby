require 'sinatra'
require 'slim'

get '/' do
  @list = [ 2,5,89,3,6,8,4]
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
