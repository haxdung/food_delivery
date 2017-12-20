class CommentFood < ApplicationRecord
  validates :content, presence: true
  belongs_to :user,optional: true
  belongs_to :food,optional: true
end
