class Post < ApplicationRecord
  enum status: [:submitted, :approved, :rejected]
  belongs_to :user
  validates_presence_of :date, :rationale

  scope :posts_by, ->(user) {where(user_id: user.id).order(id: :asc)}
end
