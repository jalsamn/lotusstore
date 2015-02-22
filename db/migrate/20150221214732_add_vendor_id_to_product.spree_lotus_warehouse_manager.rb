# This migration comes from spree_lotus_warehouse_manager (originally 20150221213800)
class AddVendorIdToProduct < ActiveRecord::Migration
  def change
    add_column :spree_variants, :vendor_id, :integer
  end
end
