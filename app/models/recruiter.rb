# == Schema Information
#
# Table name: recruiters
#
#  id          :integer          not null, primary key
#  contract_id :integer
#  password    :string(255)
#  email       :string(255)
#  phone       :string(255)
#  company_id  :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Recruiter < ActiveRecord::Base
  # ================Association=====================
  belongs_to :company
  has_one :vacancy
end
