class CreateWaivers < ActiveRecord::Migration[7.0]
  def change
    create_table :waivers do |t|
      t.integer :user_id
      t.integer :run_id
      t.string :name

      t.timestamps
    end
  end
end
