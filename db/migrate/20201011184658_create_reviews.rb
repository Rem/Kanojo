class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :reservation, null: false, foreign_key: true
      t.integer :rating_user
      t.integer :rating_girlfriend

      t.timestamps
    end
  end
end
