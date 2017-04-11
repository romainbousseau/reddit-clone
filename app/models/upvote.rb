class Upvote < ApplicationRecord
  belongs_to :subject
  belongs_to :user

  validates :subject, uniqueness: { scope: :user }
  validates :user, uniqueness: { scope: :subject }
end
