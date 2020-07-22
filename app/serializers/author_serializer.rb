class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :book_id, :first_name, :last_name, :date_of_birth 
end
