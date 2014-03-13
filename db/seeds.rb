Category.create! name: "Diamond Products"
Category.create! name: "Safety Equipment"
Category.create! name: "Sand Paper"
Category.create! name: "Glues & Sealer"
Category.create! name: "Wet & Dry Pads"
Category.create! name: "Other Products"

CategorySale.create! category_name: "Diamond Products",
percent_off: 0,
category_id: 1

CategorySale.create! category_name: "Safety Equipment",
percent_off: 0,
category_id: 2

CategorySale.create! category_name: "Sand Paper",
percent_off: 0,
category_id: 3

CategorySale.create! category_name: "Glues & Sealer",
percent_off: 0,
category_id: 4

CategorySale.create! category_name: "Wet & Dry Pads",
percent_off: 0,
category_id: 5

CategorySale.create! category_name: "Other Products",
percent_off: 0,
category_id: 6

Product.create! product_code: "abc-121",
category: "Diamond Products",
name: "name of product 1",
quantity: 1,
description: "sample product diamond",
price: "9.99",
image: "abc-125",
category_id: 1,
more_info: "There will be product information here like specs, application and advice.
            There will be product information here like specs, application and advice.
            There will be product information here like specs, application and advice."

Product.create! product_code: "abc-122",
category: "Safety Equipment",
name: "name of product 2",
quantity: 1,
description: "sample product safety",
price: "8.99",
image: "abc-123",
category_id: 2,
more_info: "This section will handle product details, applications and
            advice on use."
            
Product.create! product_code: "abc-123",
category: "Sand Paper",
name: "name of product 3",
quantity: 1,
description: "sample product sand",
price: "7.99",
image: "abc-123",
category_id: 3,
more_info: "This section will handle product details, applications and
            advice on use."


Product.create! product_code: "abc-124",
category: "Glues & Sealer",
name: "name of product 4",
quantity: 1,
description: "sample product glue",
price: "6.99",
image: "abc-123",
category_id: 4,
more_info: "This section will handle product details, applications and
            advice on use."

Product.create! product_code: "abc-125",
category: "Wet & Dry Pads",
name: "name of product 5",
quantity: 1,
description: "sample product pads",
price: "5.99",
image: "abc-123",
category_id: 5,
more_info: "This section will handle product details, applications and
            advice on use."

Product.create! product_code: "abc-126",
category: "Other Products",
name: "name of product 6",
quantity: 1,
description: "sample product other",
price: "4.99",
image: "abc-123",
category_id: 6,
more_info: "This section will handle product details, applications and
            advice on use."

Product.create! product_code: "abc-127",
category: "Diamond Products",
name: "name of product 7",
quantity: 1,
description: "sample product diamond",
price: "9.99",
image: "abc-123",
category_id: 1,
more_info: "This section will handle product details, applications and
            advice on use."

Product.create! product_code: "abc-128",
category: "Safety Equipment",
name: "name of product 8",
quantity: 1,
description: "sample product safety",
price: "8.99",
image: "abc-123",
category_id: 2,
more_info: "This section will handle product details, applications and
            advice on use."

Product.create! product_code: "abc-129",
category: "Sand Paper",
name: "name of product 9",
quantity: 1,
description: "sample product sand",
price: "7.99",
image: "abc-123",
category_id: 3,
more_info: "This section will handle product details, applications and
            advice on use."

Product.create! product_code: "abc-130",
category: "Glues & Sealer",
name: "name of product 10",
quantity: 1,
description: "sample product glue",
price: "6.99",
image: "abc-123",
category_id: 4,
more_info: "There will be product information here like specs, application and advice.
            There will be product information here like specs, application and advice.
            There will be product information here like specs, application and advice."

Product.create! product_code: "abc-131",
category: "Wet & Dry Pads",
name: "name of product 11",
quantity: 1,
description: "sample product pads",
price: "5.99",
image: "abc-123",
category_id: 5,
more_info: "This section will handle product details, applications and
            advice on use."

Product.create! product_code: "abc-132",
category: "Other Products",
name: "name of product 12",
quantity: 1,
description: "sample product other",
price: "4.99",
image: "abc-123",
category_id: 6,
more_info: "This section will handle product details, applications and
            advice on use."
