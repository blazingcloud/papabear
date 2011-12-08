class CreateFieldOfOrigins < ActiveRecord::Migration
  def change
    create_table :field_of_origins do |t|
      t.string :glocode
      t.string :name

      t.timestamps
    end
  end
end
