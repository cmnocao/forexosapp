class CreateCountries < ActiveRecord::Migration
  def up
    create_table :countries do |t|
      t.string :name, null: false
      t.string :iso2, null: false
      t.string :iso3, null: false
      t.string :capital_name
      t.boolean :enabled, null: false

      t.timestamps
    end
  end

  def down
    drop_table :countries
  end

end
