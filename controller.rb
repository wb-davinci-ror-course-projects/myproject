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

get "/products/" do 
  @product = Product.all
  halt erb(:show)
end

get "/tools/:id" do
  id = params[:id]
  @tool = Tool.find(id)
  halt erb(:show)
end