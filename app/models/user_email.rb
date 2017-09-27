# == Schema Information
#
# Table name: user_emails
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  email      :string(255)
#  is_default :boolean
#  created_at :datetime
#  updated_at :datetime
#

class UserEmail < ActiveRecord::Base
  belongs_to :user
end
