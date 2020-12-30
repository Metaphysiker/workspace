require "test_helper"

class EventCalendarControllerTest < ActionDispatch::IntegrationTest
  test "should get calendar" do
    get event_calendar_calendar_url
    assert_response :success
  end
end
