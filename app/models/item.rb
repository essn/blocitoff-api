# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  expires    :datetime
#

class Item < ActiveRecord::Base
  belongs_to :user

  before_save :set_expires

  def set_expires
    self.expires = Time.now + 7.day
  end
end
