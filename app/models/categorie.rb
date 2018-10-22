# Every Article has a Category. Thus, a category has a name with a fixed length.
class Categorie < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 25}
  validate_uniqueness_of :name
end
