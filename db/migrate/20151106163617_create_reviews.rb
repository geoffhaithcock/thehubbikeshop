class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :author
      t.text :review_entry
      t.integer :bike_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
