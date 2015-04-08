class CreateTransactions < ActiveRecord::Migration
  def up
    create_table  :transactions do |t|
      t.integer :currency_pair_id
      t.integer :rate_id
      t.float   :fr_amount
      t.float   :to_amount
      t.integer :customer_id
      t.float   :rate_value
      t.integer :user_id

      t.timestamps
    end

  end
  
  def down
    drop_table :transactions
  end
end