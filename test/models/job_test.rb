require 'test_helper'

class JobTest < ActiveSupport::TestCase
  def setup
    @valid_job = Job.new(name: 'name', job_type: :intern, description: 'work', company_description: 'good one')
  end

  test "description should be present" do
    @valid_job.description = nil
    assert_not @valid_job.valid?
  end

  test "company description should be present" do
    @valid_job.company_description = nil
    assert_not @valid_job.valid?
  end

  test "name should be present" do
    @valid_job.name = nil
    assert_not @valid_job.valid?
  end

  test "job type should be present" do
    @valid_job.job_type = nil
    assert_not @valid_job.valid?
  end

  test "job is valid" do
    job = @valid_job
    assert @valid_job.valid?
  end
end
