# This migration comes from spree_lotus_warehouse_manager (originally 20150226233710)
class AddRvidToVendor < ActiveRecord::Migration
  def change
    add_column :spree_vendors, :rvid, :integer
  end
end
