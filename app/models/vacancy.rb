# == Schema Information
#
# Table name: vacancies
#
#  id              :integer          not null, primary key
#  job_title       :string(255)
#  job_summary     :text(65535)
#  job_type        :string(255)
#  min_sal         :float(24)
#  max_sal         :float(24)
#  deal_line       :string(255)
#  expected_skills :text(65535)
#  locations       :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  recruiter_id    :integer
#

class Vacancy < ActiveRecord::Base
  # ================Association=====================
  belongs_to :recruiter
  has_many :applcation
  has_many :job_seekers, through: :applcations
  has_many :mains
  has_many :job_seekers, through: :mains
end
