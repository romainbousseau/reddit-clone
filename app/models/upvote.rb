class Upvote < ApplicationRecord
  belongs_to :subject
  belongs_to :user

  validates :post, uniqueness: { scope: :user }
  validates :user, uniqueness: { scope: :post }
end
