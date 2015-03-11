class CreateCustomers < ActiveRecord::Migration
  def up
    create_table :customers do |t|
    	t.string	:first_name,	null: false
    	t.string	:last_name,		null: false
    	t.string	:sex,					null: false
      t.date 		:dob,					null: false
      t.string	:profile_picture
      t.string	:nationality,	null: false

      t.timestamps
    end
  end

  def down
  	drop_table :customers
  end
end
