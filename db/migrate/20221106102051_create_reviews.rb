class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :star_rating
      t.string :comment
      t.integer :product_id, foreign_key: true
      t.integer :user_id, foreign_key: true
    end
  end
end
