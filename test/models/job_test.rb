require 'test_helper'

class JobTest < ActiveSupport::TestCase
  test "name should be present" do
    job = Job.new 
    assert_not job.valid?
  end
end
