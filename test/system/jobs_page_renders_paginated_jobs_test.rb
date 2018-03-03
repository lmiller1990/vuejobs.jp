require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
  test "viewing the index" do
    visit jobs_path
    assert_selector '.job_wrapper', :count => 2
  end

  test "creating a new job" do
      visit new_job_path
      take_screenshot
      fill_in 'job[name]', with: 'developer'
      click_on 'Create Job'
      take_screenshot
  end
end
