# This migration comes from spree_lotus_warehouse_manager (originally 20150222033628)
class AddRevelIdToSpreeVarients < ActiveRecord::Migration
  def change
    add_column :spree_variants, :revel_id, :bigint
  end
end
