# This migration comes from spree_deliverymanager (originally 20150122205323)
class CreateSpreeAreamanagers < ActiveRecord::Migration
  def change
    create_table :spree_areamanagers do |t|
      t.integer :zipcode
      t.integer :zone

      t.timestamps
    end
  end
end
