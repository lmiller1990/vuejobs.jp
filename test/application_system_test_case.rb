require "test_helper"
require "capybara/poltergeist"


class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  #driven_by :poltergeist
  driven_by :selenium, using: :safari, screen_size: [1400, 1400]
end
