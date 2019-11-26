require "sinatra"
require "erb"
require "pry"

get '/' do
  erb :index
end

post '/monstas' do
  @name = params[:name]
  erb :stars
end
