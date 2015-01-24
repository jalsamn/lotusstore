# This migration comes from spree_deliveryareamanager (originally 20150121054426)
class CreateSpreeZipcodes < ActiveRecord::Migration
  def change
    create_table :spree_zipcodes do |t|
      t.integer :code
      t.integer :zone

      t.timestamps
    end
  end
end
