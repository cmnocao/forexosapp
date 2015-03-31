class CreateRates < ActiveRecord::Migration
  def up
    create_table :rates do |t|
      t.float :rate, null: false
      t.integer :currency_pair_id, null: false

      t.timestamps
    end
    
  end

  def down
  	drop_table :rates
  end
  
end
