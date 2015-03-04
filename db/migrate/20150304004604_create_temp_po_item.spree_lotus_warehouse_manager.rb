# This migration comes from spree_lotus_warehouse_manager (originally 20150304004155)
class CreateTempPoItem < ActiveRecord::Migration
  def change
    create_table :spree_temp_po_items do |t|
      t.integer :po_id
      t.integer :variant_id
    end
  end
end
