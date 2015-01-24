# This migration comes from spree_deliverymanager (originally 20150124075559)
class AddTimeslotidToSpreeShipment < ActiveRecord::Migration
  def change
    add_column :spree_shipments, :timeslot_id, :integer
  end
end
