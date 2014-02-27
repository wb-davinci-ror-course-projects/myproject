require './davinci-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/contact" do
  halt erb(:contact)
end

get "/diamond" do
  halt erb(:diamond)
end

get "/safety" do
  halt erb(:safety)
end

get "/sand" do
  halt erb(:sand)
end

get "/glue" do
  @products = Product.find_by(category: "Glues & Sealer")
  halt erb(:glue)
end

get "/pad" do
  halt erb(:pad)
end

get "/other" do
  halt erb(:other)
end