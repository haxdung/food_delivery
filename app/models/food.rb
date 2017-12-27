class Food < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  has_many :comment_foods
  has_many :order_details
  belongs_to :food_category
  belongs_to :user
  has_many :carts

  scope :search, -> content {
    where "name LIKE ?", "%#{content}%"
  }

  scope :newfood, -> {
    order("created_at DESC").limit(4)
  }

  scope :hotfood, -> {
    order("rating_avg DESC").limit(4)
  }
end
