class CreateUserRuns < ActiveRecord::Migration[7.0]
  def change
    create_table :user_runs do |t|
      t.integer :user_id
      t.integer :run_id

      t.timestamps
    end
  end
end
