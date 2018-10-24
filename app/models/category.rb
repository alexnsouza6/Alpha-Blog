# Every Article has a Category. Thus, a category has a name with a fixed length.
class Category < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 25}
  validates_uniqueness_of :name
end
