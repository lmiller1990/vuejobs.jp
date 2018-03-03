require 'test_helper'

class CreatesAJobTest < ActionDispatch::IntegrationTest
  test 'creates a job' do
    assert_difference 'Job.count' do
      post jobs_path, params: {
        job: {
          name: 'programmer',
          job_type: :intern
        }
      }
    end
    follow_redirect!
    assert_template 'jobs/show'
  end

  test 'views the job index' do
    get jobs_path
    assert_template 'jobs/index'
    assert_select '.job_wrapper', count: 2
    assert_select "#job_#{Job.first.id} > .type", text: Job.first.job_type
  end
end
