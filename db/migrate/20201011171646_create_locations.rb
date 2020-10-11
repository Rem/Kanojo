class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.belongs_to :girlfriend, null: false, foreign_key: true
      t.string :address

      t.timestamps
    end
  end
end
