# == Schema Information
#
# Table name: histories
#
#  id            :integer          not null, primary key
#  history_type  :string(255)
#  title         :text(65535)
#  created_at    :datetime
#  updated_at    :datetime
#  job_seeker_id :integer
#

require 'test_helper'

class HistoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
