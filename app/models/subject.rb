class Subject < ApplicationRecord
  belongs_to :user
  has_many :messages, dependent: :destroy
  has_many :upvotes, dependent: :destroy
  validates :title, presence: true
  validates :content, presence: true

  def score
    upvotes.count
  end
end
