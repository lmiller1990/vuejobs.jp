require 'test_helper'

class JobTest < ActiveSupport::TestCase
  test "description should be present" do
    job = Job.new(job_type: :intern, name: 'job')
    assert_not job.valid?
  end

  test "name should be present" do
    job = Job.new(job_type: 0)
    assert_not job.valid?
  end

  test "job type should be present" do
    job = Job.new(name: 'job')
    assert_not job.valid?
  end

  test "job is valid" do
    job = Job.new(
      name: 'job',
      job_type: :intern,
      description: '<div>Great job</div>'
    )
    assert job.valid?
  end
end
