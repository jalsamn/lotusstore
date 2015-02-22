# This migration comes from spree_lotus_warehouse_manager (originally 20150219004136)
class AddProductVarientsToSpreeVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :expireable, :boolean
    add_column :spree_variants, :pestissue, :boolean
    add_column :spree_variants, :multiplebarcode, :boolean
  end
end
