class AddIconToEmployer < ActiveRecord::Migration
  def change
    add_column :employers, :icon, :string
  end
end
