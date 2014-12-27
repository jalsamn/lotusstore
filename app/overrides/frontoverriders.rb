Deface::Override.new(:virtual_path => "spree/shared/_footer", 
                     :name => "footer", 
                     :replace => "#footer", 
                     :partial => "shared/cfooter")

Deface::Override.new(:virtual_path => "spree/shared/_header", 
                     :name => "cheader", 
                     :replace => "#spree-header", 
                     :partial => "shared/cheader")