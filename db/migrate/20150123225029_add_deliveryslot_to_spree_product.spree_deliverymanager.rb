# This migration comes from spree_deliverymanager (originally 20150123224833)
class AddDeliveryslotToSpreeProduct < ActiveRecord::Migration
  def change
    add_column :spree_products, :deliveryslot, :string
  end
end
