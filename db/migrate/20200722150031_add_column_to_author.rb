class AddColumnToAuthor < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :api_key, :string, comment: 'ApiKey for Author'
    add_index :authors, :api_key, unique: true
    add_reference :authors, :book, index: true
  end
end
