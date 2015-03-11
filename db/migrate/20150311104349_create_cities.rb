class CreateCities < ActiveRecord::Migration
  def up
    create_table :cities do |t|
      t.string :name, null: false
      t.integer :state_id, null: false

      t.timestamps
    end

    add_index :cities, :state_id
  
  end

  def down
  	drop_table :cities
  end
end
