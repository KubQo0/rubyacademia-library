class Book < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :pages, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 1000 }
  validates :bookmark, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 1000 }
  validates :read, inclusion: { in: [ true, false ] }
end
