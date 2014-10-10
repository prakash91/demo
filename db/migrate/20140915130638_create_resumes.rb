class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
    	t.string :resume_heading
    	t.string :functional_area
    	t.string :current_company
    	t.string :position
    	t.text :key_skills
    	t.integer :total_experience
    	t.string :attach_resume
    	t.integer :expected_salary
    	t.boolean :active, :default => true
    	t.string :highest_qualification

    	t.references :user, index: true
      t.timestamps
    end
  end
end
