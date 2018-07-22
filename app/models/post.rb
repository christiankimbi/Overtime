class Post < ApplicationRecord
  enum status: [:submitted, :approved, :rejected]
  belongs_to :user
  validates_presence_of :date, :rationale
end
