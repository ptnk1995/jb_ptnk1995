# == Schema Information
#
# Table name: matches
#
#  id            :integer          not null, primary key
#  job_seeker_id :integer
#  vacancy_id    :integer
#  ratio         :float(24)
#  created_at    :datetime
#  updated_at    :datetime
#

class Match < ActiveRecord::Base
  belongs_to :job_seeker
  belongs_to :vacancy
end
