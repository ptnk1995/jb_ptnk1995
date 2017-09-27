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

require 'test_helper'

class ApplicationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
