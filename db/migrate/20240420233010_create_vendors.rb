class CreateVendors < ActiveRecord::Migration[7.0]
  def change
    create_table :vendors do |t|
      t.string :name
      t.integer :runs_count, default: 0

      t.timestamps
    end
  end
end
