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

get "/sales_flyer_edit/" do
  halt erb(:sales_flyer_edit)
end

post "/sales_flyer_edit/" do
  if params[:category_name] != ""
  category_name = params[:category_name]
  @category_on_sale = CategorySale.where(category_name: category_name).first
  @category_on_sale.category_name = params[:category_name]
  @category_on_sale.percent_off   = params[:percent_off]
    if @category_on_sale.save == true
      redirect "/" 
    end
  else 
    @error = "Please be sure to enter a category and percentage."
          halt erb(:sales_flyer_edit)
  end
end
get "/edit_old" do
  halt erb(:edit_old)
end

get "/add_new" do
  @new_product = Product.first
  halt erb(:add_new)
end

post "/add_new" do
  @new_product                = Product.new
  @new_product.category       = params["category"]
  @new_product.product_code   = params["product_code"]
  @new_product.name           = params["name"]
  @new_product.quantity       = params["quantity"]
  @new_product.description    = params["description"]
  @new_product.price          = params["price"]
  @new_product.image          = params["product_code"]
  category_id = Category.find_by(name: @new_product.category)
  @new_product.category_id    = category_id.id
  
  if @new_product.save == true
  redirect "/"
  else
    halt erb(:add_new)
  end
end

get "/:product_category" do
  product_category = params[:product_category]
  @header = "#{product_category}"
  @products = Product.where(category: product_category)
  halt erb(:show)
end



