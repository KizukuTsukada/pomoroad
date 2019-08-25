class Group < ApplicationRecord

  has_many   :posts
  belongs_to :user
  validates  :name, presence: true

  validates :name, presence: true, length: { maximum: 15 }
end
