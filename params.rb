require 'sinatra'
# require 'pry-byebug'

@@result= []

# CRUD
# root route
get '/' do
  puts "I'm visible in the terminal"
  "I'm visible in the browser"
end

# /names/:id
get '/names/:id' do
  result = nil

  if params[:id].is_a? Numeric
    names  = ["Fernando", "Inez", "Claudia", "Magda"]
    id     = params[:id].to_i
    result = names[id]
  else
    result = 400
  end

  result
end

# Whatever number the user gives, is stored in an array.
# This should return the whole array once the number was stored.
# This should accept anything, even words.
post '/store/:id' do
  id = params[:id]

  unless (id.is_a? Numeric) || (id.is_a? String)
    @@result = 400
  else
    @@result << id
  end

  @@result
end

# Update
put '/put_route' do
  "I put it"
end

# Delete
delete '/delete_route' do
  "I deleted it"
end
