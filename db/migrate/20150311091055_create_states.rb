class CreateStates < ActiveRecord::Migration
  def up
    create_table :states do |t|
      t.string :name, null: false
      t.integer :country_id, null: false

      t.timestamps
    end

    add_index :states, :country_id

  end

  def down
    drop_table :states
  end
end