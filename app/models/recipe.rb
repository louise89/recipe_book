class Recipe < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, :ingredients, :method, presence: true,
                   length: { minimum: 5 }
  validates :servings, :time, presence: true,
                    length: { minimum: 1 }
end
