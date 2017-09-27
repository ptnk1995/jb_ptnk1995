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

require 'test_helper'

class MatchTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
