Deface::Override.new(:virtual_path => "spree/shared/_footer", 
                     :name => "footer", 
                     :replace => "#footer", 
                     :partial => "shared/cfooter")

Deface::Override.new(:virtual_path => "spree/shared/_header", 
                     :name => "footer", 
                     :replace_contents => "#logo", 
                     :text => "<h1>Lotus Green</h1>")