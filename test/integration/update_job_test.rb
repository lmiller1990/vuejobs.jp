require 'test_helper'

class UpdateJobTest < ActionDispatch::IntegrationTest
  def setup
    @job = jobs(:frontend_developer)
  end

  test 'updates a job' do
    patch job_path(@job), params: {
      job: {
        name: 'updated_name',
        company_description: 'updated_description'
      }
    }
    follow_redirect!
    assert_template 'jobs/show'
    @job.reload
    assert_equal @job.name, 'updated_name'
  end
end
