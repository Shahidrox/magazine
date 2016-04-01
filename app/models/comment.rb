class Comment < ActiveRecord::Base
  belongs_to :article
  belongs_to :user
  has_many :sub_comments
end
