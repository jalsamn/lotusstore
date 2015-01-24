# This migration comes from spree_testscaffold (originally 20150122035144)
class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.string :author

      t.timestamps
    end
  end
end
