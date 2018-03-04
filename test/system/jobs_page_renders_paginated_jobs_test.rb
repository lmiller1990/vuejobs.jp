require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
  test "viewing the index" do
    visit jobs_path
    assert_selector '.job_wrapper', :count => 2
  end

  test "creating a new job" do
    assert_difference 'Job.count', 1 do
      visit new_job_path
      fill_in 'job[name]', with: 'developer'
      fill_in 'job[description]', with: '<div>do some work</div>'
      select 'contract', from: 'job_job_type'
      click_on 'Create Job'
      assert_selector '.show_job_name', :count => 1
      assert_selector '.show_job_name', text: 'developer'
    end
  end
end
