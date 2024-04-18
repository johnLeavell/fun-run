class CreateShoes < ActiveRecord::Migration[7.0]
  def change
    create_table :shoes do |t|
      t.string :size
      t.string :brand
      t.string :model
      t.string :mileage, default: 0

      t.timestamps
    end
  end
end
