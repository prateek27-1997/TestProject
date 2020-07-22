class Book < ApplicationRecord
  validates :book_title, presence: true
  validates :author_id, presence: true
  has_many :authors, dependent: :destroy
end
