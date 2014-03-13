class Product < ActiveRecord::Base
  validates :category, presence: true
  validates :product_code, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :more_info, presence: true
end

