# This migration comes from spree_revel_connector (originally 20150126215701)
class CreateSpreeRevproducts < ActiveRecord::Migration
  def change
    create_table :spree_revproducts do |t|
      t.string :name
      t.integer :sku
      t.integer :barcode
      t.string :category
      t.decimal :pointvalue
      t.decimal :cost
      t.decimal :price
      t.boolean :active

      t.timestamps
    end
  end
end
