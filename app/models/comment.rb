class Comment < ApplicationRecord
  belongs_to :recipe

  validates :commenter, :body, presence: true,
                   length: { minimum: 5 }
end
