class CreateGirlfriends < ActiveRecord::Migration[6.0]
  def change
    create_table :girlfriends do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.integer :height
      t.integer :rating
      t.string :password_digest
      t.integer :phone_number
      t.string :photo

      t.timestamps
    end
  end
end
