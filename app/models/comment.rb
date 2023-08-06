class Comment < ApplicationRecord
  belongs_to :item, optional: true
  belongs_to :comment, class_name: 'Comment', optional: true

  has_many :replies, -> { where(comment_type: 'reply') },
  dependent: :destroy, class_name: 'Comment', foreign_key: 'comment_id', inverse_of: 'comment'
end
