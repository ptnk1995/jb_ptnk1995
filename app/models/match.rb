class Match < ActiveRecord::Base
  belongs_to :job_seeker
  belongs_to :vacancy
end
