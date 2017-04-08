class Subject < ApplicationRecord
  belongs_to :user
  has_many :messages, dependent: :destroy
  validates :title, presence: true
  validates :content, presence: true
end
