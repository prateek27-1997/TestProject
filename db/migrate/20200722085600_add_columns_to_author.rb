class AddColumnsToAuthor < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :first_name, :string, comment: 'Author First Name'
    add_column :authors, :last_name, :string, comment: 'Author Last Name'
    add_column :authors, :date_of_birth, :string, comment: 'Author Date of Birth'
  end
end
