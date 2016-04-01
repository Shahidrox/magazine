class SubComment < ActiveRecord::Base
  belongs_to :comment
  belongs_to :user
  has_many :sub_one_comments
end
