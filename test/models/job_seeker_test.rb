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

require 'test_helper'

class JobSeekerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
