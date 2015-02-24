# This migration comes from spree_lotus_warehouse_manager (originally 20150223233524)
class CreateSpreePurchaseOrderItems < ActiveRecord::Migration
  def change
    create_table :spree_purchase_order_items do |t|
      t.integer :product_id
      t.integer :purchase_order_id
      t.integer :quantity
      t.text :quantitytype
      
      
      t.boolean :active

      t.timestamps
    end
  end
end
