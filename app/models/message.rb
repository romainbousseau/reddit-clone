class Message < ApplicationRecord
  belongs_to :user
  belongs_to :subject
  validates :content, presence: true
end
