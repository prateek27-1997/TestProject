class Book < ApplicationRecord
  validates :book_title, presence: true
  validates :author_id, presence: true
  has_and_belongs_to_many :authors
end
