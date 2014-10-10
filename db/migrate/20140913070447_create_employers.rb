class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
    	t.string :company_name
    	t.string :company_type
    	t.integer :contact
    	t.text :address
    	t.date :doo
    	t.string :country
    	t.string :state
    	t.string :city
    	t.integer :pincode
    	t.integer :total_employee

    	t.references :user, index: true
      t.timestamps
    end
  end
end
