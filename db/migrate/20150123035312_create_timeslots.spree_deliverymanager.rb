# This migration comes from spree_deliverymanager (originally 20150123022308)
class CreateTimeslots < ActiveRecord::Migration
  def change
    create_table :timeslots do |t|
      t.date :ddate
      t.string :dtime

      t.timestamps
    end
  end
end
