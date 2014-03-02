require './davinci-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/contact" do
  halt erb(:contact)
end

get "/:product_category" do
  product_category = params[:product_category]
  @header = "#{product_category}"
  @products = Product.where(category: product_category)
  halt erb(:show)
end

