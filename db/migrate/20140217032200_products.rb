class Products < ActiveRecord::Migration
  def change
    create_table :products do |t|
    t.string :category
    t.string :product_code
    t.string :name
    t.string :description
    t.string :price
    t.string :image
    end
  end
end

