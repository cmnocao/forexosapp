class CreateStates < ActiveRecord::Migration
  def up
    create_table :states do |t|
      t.string :name, null: false
      t.integer :country_id, null: false
      t.string :iso
      t.string :capital_name
      t.string :code

      t.timestamps
    end
  end

  def down
    drop_table :states
  end
end