    product = Spree::Product.new()
    
    product.name = "test"
    product.price = "111"
    product.shipping_category_id = "5"
    product.save
