Deface::Override.new(:virtual_path => "spree/shared/_footer", 
                     :name => "footer", 
                     :replace => "#footer", 
                     :partial => "shared/cfooter")

Deface::Override.new(:virtual_path => "spree/shared/_header", 
                     :name => "cheader", 
                     :replace => "#spree-header", 
                     :partial => "shared/cheader")

Deface::Override.new(:virtual_path => "spree/shared/_head", 
                     :name => "chead", 
                    :insert_before => "erb[loud]:contains('yield')", 
                                       :text => "<script type='text/javascript'>
                        jQuery(document).ready(function() {
                             $().jetmenu({
                                  indicator: false,
                                  speed: 600,
                                  submenuTrigger: 'click'
                             });
                        });
                  </script>")
