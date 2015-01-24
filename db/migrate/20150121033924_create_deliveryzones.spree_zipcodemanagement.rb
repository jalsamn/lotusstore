# This migration comes from spree_zipcodemanagement (originally 20150121033432)
class CreateDeliveryzones < ActiveRecord::Migration
  def change
    create_table :deliveryzones do |t|
      t.integer :zipcode
      t.integer :zone

      t.timestamps
    end
  end
end
