require './davinci-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/about" do
  halt erb(:about)
end

get "/contact" do
  halt erb(:contact)
end



get "/edit" do
  @new_product = Product.first
  halt erb(:edit)
end

post "/edit" do
  @new_product                = Product.new
  @new_product.category       = params["category"]
  @new_product.product_code   = params["product_code"]
  @new_product.name           = params["name"]
  @new_product.quantity       = params["quantity"]
  @new_product.description    = params["description"]
  @new_product.price          = params["price"]
  @new_product.image          = params["product_code"]
  if @new_product.save == true
  redirect "/"
  else
    halt erb(:edit)
  end
end

get "/:product_category" do
  product_category = params[:product_category]
  @header = "#{product_category}"
  @products = Product.where(category: product_category)
  halt erb(:show)
end

