class Subject < ApplicationRecord
  belongs_to :user
  has_many :messages
  validates :title, presence: true
  validates :content, presence: true
end
