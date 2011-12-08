class CreateHoneys < ActiveRecord::Migration
  def change
    create_table :honeys do |t|
      t.string :name
      t.datetime :harvested_at
      t.references :hive
      t.integer :volume_in_ml

      t.timestamps
    end
    add_index :honeys, :hive_id
  end
end
