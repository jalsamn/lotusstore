Deface::Override.new(:virtual_path => "spree/home/index",
                     :name => "sidebar",
                     :replace => "[data-hook='homepage_sidebar_navigation']",
                     :partial => "shared/cart")

Deface::Override.new(
  :virtual_path       => 'spree/products/show',
  :name               => 'override_class',
  :set_attributes     => '[data-hook=\'product_right_part\']',
  :attributes         => {:class => 'col-md-4'}
)

Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "sidebar2",
                     :insert_after => "[data-hook='product_right_part']",
                     :text => '<aside data-hook="" class="col-sm-4 col-md-3" id="sidebar">
                                <%= render :partial => "shared/cart" %>
                              </aside>'
                     )

Deface::Override.new(
  :virtual_path       => 'spree/products/_cart_form',
  :name               => 'override_product_price',
  :set_attributes     => '[data-hook="product_price"]',
  :attributes         => {:class => 'col-md-8'}
)
