class CreateHives < ActiveRecord::Migration
  def change
    create_table :hives do |t|
      t.references :field_of_origin
      t.string   :bee_species
      t.datetime :last_maintained
      t.datetime :last_harvest
      t.timestamps
    end
    add_index :hives, :field_of_origin_id
  end
end
