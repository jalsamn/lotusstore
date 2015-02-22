# This migration comes from spree_lotus_warehouse_manager (originally 20150219022958)
class AddBarcodeToSpreeVarients < ActiveRecord::Migration
  def change
    add_column :spree_variants, :barcode, :bigint
  end
end
