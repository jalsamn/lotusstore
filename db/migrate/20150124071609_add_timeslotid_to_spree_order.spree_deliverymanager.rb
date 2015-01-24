# This migration comes from spree_deliverymanager (originally 20150124063158)
class AddTimeslotidToSpreeOrder < ActiveRecord::Migration
  def change
    add_column :spree_orders, :timeslot_id, :integer
  end
end
