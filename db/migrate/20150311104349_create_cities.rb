class CreateCities < ActiveRecord::Migration
  def up
    create_table :cities do |t|
      t.string :name, null: false
      t.integer :state_id, null: false

      t.timestamps
    end  
  end

  def down
  	drop_table :cities
  end
end
