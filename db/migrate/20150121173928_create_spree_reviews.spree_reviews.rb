# This migration comes from spree_reviews (originally 20150121172058)
class CreateSpreeReviews < ActiveRecord::Migration
  def change
    create_table :spree_reviews do |t|
      t.integer :product_id
      t.string :name
      t.integer :rating
      t.text :review

      t.timestamps
    end
  end
end
