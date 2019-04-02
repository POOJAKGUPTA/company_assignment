class AddFieldsToUser < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :last_name, :string
  	add_column :users, :postcode, :string
  	add_column :users, :company_id, :integer
  	add_column :users, :city_id, :integer
  	add_column :users, :role_id, :integer
   	add_column :users, :start_date, :datetime
  	add_column :users, :end_date, :datetime
  	add_column :users, :active, :boolean
  end
end
