class CreateCurrencyPairs < ActiveRecord::Migration
  def up
    create_table :currency_pairs do |t|
      t.integer :fr_currency_id,  null: false
      t.integer :to_currency_id,  null: false
      t.string  :ccy_pair_iso,    null: false
      t.string  :ccy_pair_name,   null: false

      t.timestamps
    end

  end

  def down
  	drop_table :currency_pairs
  end
end
