require './davinci-sinatra.rb'

get "/" do
  halt erb(:index)
end


get "/home" do
  halt erb(:home)
end

get "/diamond" do
  halt erb(:diamond)
end

get "/contact" do
  halt erb(:contact)
end