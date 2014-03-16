require './davinci-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/login" do
  halt erb(:login)
end

get "/new_user" do
  @user = User.new
  halt erb(:new_user)
end

post "/new_user" do
  @user = User.new
  @user.username = params[:username]
  if @user.username == ""
    flash[:error] = "Username can not be blank. Please try again."
    halt erb(:new_user)
  end
  @user.password = params[:password]
  @user.password_confirmation = params[:password_confirmation]
  if @user.password_confirmation != @user.password
    flash[:error] = "There was a problem with the passwords, they must be entered and match.
                      Please try again."
    halt erb(:new_user)
  end
  @user.email_address = params[:email_address]
  if @user.email_address == ""
    flash[:error] = "The e-mail address can not be blank. Please try again."
    halt erb(:new_user)
  end
  if @user.save == false
    flash[:error] = "Your username and/or e-mail already exists, please try again."
    halt erb(:new_user)
  else
  redirect "/"
  end
end

get "/about" do
  halt erb(:about)
end

get "/contact" do
  halt erb(:contact)
end

get "/more_info/:id" do
  id = params[:id]
  @header = "Product Detail Page"
  @product = Product.find_by(id: id)
  halt erb(:more_info)
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
  if params[:category] != ""
  @new_product                = Product.new
  @new_product.category       = params["category"]
  @new_product.product_code   = params["product_code"]
  @new_product.name           = params["name"]
  @new_product.quantity       = params["quantity"]
  @new_product.description    = params["description"]
  @new_product.price          = params["price"]
  @new_product.image          = params["product_code"]
  @new_product.more_info      = params["more_info"]
  category_id = Category.find_by(name: @new_product.category)
  @new_product.category_id    = category_id.id
    if @new_product.save == true
      redirect "/"
    end
  else
    @error = "Please fill out all the fields"
    halt erb(:add_new)
  end
end
get "/:product_category" do
  product_category = params[:product_category]
  @header = "#{product_category}"
  @products = Product.where(category: product_category)
  halt erb(:show)
end



