require 'test_helper'

class TdlistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tdlists_index_url
    assert_response :success
  end

  test "should get new" do
    get tdlists_new_url
    assert_response :success
  end

  test "should get show" do
    get tdlists_show_url
    assert_response :success
  end

end
