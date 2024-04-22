class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :fan, null: false, foreign_key: { to_table: users}
      t.references :shoe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
