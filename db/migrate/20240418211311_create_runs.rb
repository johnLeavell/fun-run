class CreateRuns < ActiveRecord::Migration[7.0]
  def change
    create_table :runs do |t|
      t.string :distance
      t.string :name
      t.integer :vendor_id
      t.integer :user_id
      t.string :route
      t.integer :waivers_count
      t.integer :user_runs_count

      t.timestamps
    end
  end
end
