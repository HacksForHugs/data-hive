# == Schema Information
#
# Table name: user_tags
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  tag_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserTag < ActiveRecord::Base
  belongs_to :tag
  belongs_to :user
end
