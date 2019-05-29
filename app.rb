require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "hello!"
end

get '/secret' do
  "Secret route added"
end

get '/testing' do
  "Testing route added"
end

get '/cat' do
  @random_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
