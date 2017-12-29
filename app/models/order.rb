class Order < ApplicationRecord
  validates :address, presence: true
  validates :total_money, presence: true
  validates :customer_id, presence: true
  has_many :order_details
  belongs_to :employee, class_name: "User"
  belongs_to :customer, class_name: "User"
end
