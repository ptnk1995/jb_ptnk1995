# == Schema Information
#
# Table name: applications
#
#  id            :integer          not null, primary key
#  job_seeker_id :integer
#  vacancy_id    :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Application < ActiveRecord::Base
  belongs_to :job_seeker
  belongs_to :vacancy
end
