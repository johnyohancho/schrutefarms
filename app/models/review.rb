class Review < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :content, presence: true
  validates :content, length: { maximum: 140 }
  validates :rating, presence: true
end
