class CreateCustomers < ActiveRecord::Migration
  def up
    create_table :customers do |t|
    	t.string	:first_name,	null: false
    	t.string	:last_name,		null: false
    	t.string	:sex,					null: false
      t.string 	:dob,					null: false
      t.string	:profile_picture
      t.integer	:country_id,	null: false
      t.string :country_name

      t.string  :email
      t.string  :phone

      t.timestamps
    end
  end

  def down
  	drop_table :customers
  end
end
