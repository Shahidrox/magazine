class SubOneComment < ActiveRecord::Base
  belongs_to :user
  belongs_to :sub_comment
end
