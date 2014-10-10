class AddPhotoToSeeker < ActiveRecord::Migration
  def change
    add_column :seekers, :photo, :string
  end
end
