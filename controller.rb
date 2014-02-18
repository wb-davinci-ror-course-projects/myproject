require './davinci-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/home" do
  halt erb(:home)
end

get "/contact" do
  halt erb(:contact)
end

get "/products/:v" do
  id = params[:v]
  @product = Product.find(id)
  halt erb(:show)
end
