# This migration comes from spree_deliverymanager (originally 20150123225734)
class AddTimeslotidToSpreeProduct < ActiveRecord::Migration
  def change
    add_column :spree_products, :timeslot_id, :integer
  end
end
