# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.create! product_code: "abc-123",
category: "Diamond Products",
description: "sample product diamond",
price: "9.99",
image: ""

Product.create! product_code: "abc-123",
category: "Safety Equipment",
description: "sample product safety",
price: "8.99",
image: ""

Product.create! product_code: "abc-123",
category: "Sand Paper",
description: "sample product sand",
price: "7.99",
image: ""

Product.create! product_code: "abc-123",
category: "Glues & Sealer",
description: "sample product glue",
price: "6.99",
image: ""

Product.create! product_code: "abc-123",
category: "Wet & Dry Pads",
description: "sample product pads",
price: "5.99",
image: ""

Product.create! product_code: "abc-123",
category: "Other",
description: "sample product other",
price: "4.99",
image: ""