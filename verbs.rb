require 'sinatra'
require 'pry-byebug'

# CRUD
# root route
get '/' do
  puts "I'm visible in the terminal"
  "I'm visible in the browser"
end

# Read
get '/get_route' do
  "I got it"
end

# Create
post '/post_route' do
  "I posted it"
end

# Update
put '/put_route' do
  "I put it"
end

# Delete
delete '/delete_route' do
  "I deleted it"
end
