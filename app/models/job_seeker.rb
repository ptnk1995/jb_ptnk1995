# == Schema Information
#
# Table name: job_seekers
#
#  id                 :integer          not null, primary key
#  user_id            :integer
#  skills             :string(255)
#  expected_sal       :float(24)
#  expected_locations :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#

class JobSeeker < ActiveRecord::Base
  # ================Association=====================
  has_many :applcation
  has_many :vacancies, through: :applcations
  has_many :mains
  has_many :vacancies, through: :mains
  belongs_to :user
  has_many :histories
end
