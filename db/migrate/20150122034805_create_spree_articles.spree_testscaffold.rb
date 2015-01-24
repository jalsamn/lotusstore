# This migration comes from spree_testscaffold (originally 20150122034653)
class CreateSpreeArticles < ActiveRecord::Migration
  def change
    create_table :spree_articles do |t|
      t.string :name
      t.string :author

      t.timestamps
    end
  end
end
