# This migration comes from spree_sanebackyard (originally 20150906060955)
class CreateSpreeCases < ActiveRecord::Migration
  def self.up
    create_table :spree_cases do |t|
      t.references :variant
      t.date :receivedate
      t.date :expirationdate
      t.decimal :unitpercase
      t.references :vendor
      t.decimal :cost
      t.string :location
      t.timestamps
    end
  end

  def self.down
    drop_table :spree_cases
  end
end
