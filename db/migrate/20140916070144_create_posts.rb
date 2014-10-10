class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :category
    	t.string :job_type
    	t.string :title
    	t.string :description
    	t.string :location
    	t.integer :salary_offered
    	t.integer :required_experience
    	t.string :required_profile
    	t.boolean :active, :default => true

    	t.references :user, index: true
      t.timestamps
    end
  end
end
