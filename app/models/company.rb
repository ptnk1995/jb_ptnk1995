# == Schema Information
#
# Table name: companies
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  description    :text(65535)
#  website        :string(255)
#  address        :text(65535)
#  country        :string(255)
#  bussiness_type :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Company < ActiveRecord::Base
  # ================Association=====================
  has_many :recruiters
end
