class Products < ActiveRecord::Migration
  def change
    create_table :products do |t|
    t.string :product_code
    t.string :category
    t.string :category_link
    t.string :description
    t.integer :price
    t.string :image
    end
  end
end
