# This migration comes from spree_lotus_warehouse_manager (originally 20150222213015)
class AddRevelIdToProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :revel_id, :integer
  end
end
