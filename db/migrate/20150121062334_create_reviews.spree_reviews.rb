# This migration comes from spree_reviews (originally 20150121055932)
class CreateReviews < ActiveRecord::Migration

    create_table :reviews do |t|
      t.integer :product_id
      t.string :name
      t.integer :rating
      t.text :review

      t.timestamps
  end
end
