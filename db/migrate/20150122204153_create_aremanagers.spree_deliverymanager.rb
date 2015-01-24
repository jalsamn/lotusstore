# This migration comes from spree_deliverymanager (originally 20150122203101)
class CreateAremanagers < ActiveRecord::Migration
  def change
    create_table :aremanagers do |t|
      t.integer :zipcode
      t.integer :zone

      t.timestamps
    end
  end
end
