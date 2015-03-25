class CreateCurrencies < ActiveRecord::Migration
  def up
    create_table :currencies do |t|
      t.string :name, null: false
      t.string :iso, null: false
      t.string :base_unit_one
      t.string :base_unit_other

      t.timestamps
    end
  end

  def down
    drop_table :currencies
  end

end