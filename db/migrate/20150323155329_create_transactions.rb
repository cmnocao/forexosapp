class CreateTransactions < ActiveRecord::Migration
  def up
    create_table  :transactions do |t|
      t.integer :currency_pair_id,  null: false
      t.integer :rate_id,           null: false
      t.float   :fr_amount,         null: false
      t.float   :to_amount,         null: false
      t.integer :customer_id,       null: false
      t.float   :rate_value,        null: false
      t.integer :user_id,           null: false
      t.integer :fr_ccy_id,         null: false
      t.integer :to_ccy_id,         null: false

      t.timestamps
    end

  end
  
  def down
    drop_table :transactions
  end
end