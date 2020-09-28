class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.integer :age
      t.integer :rating
      t.string :gender
      t.string :email

      t.timestamps
    end
  end
end
