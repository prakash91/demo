class CreateSeekers < ActiveRecord::Migration
  def change
    create_table :seekers do |t|
    	t.string :firstname
    	t.string :lastname
    	t.string :gender
    	t.string :contact
    	t.string :current_location
    	t.date :dob
    	t.string :nationality
    	t.text :permanent_address

    	t.references :user, index: true
      t.timestamps
    end
  end
end
