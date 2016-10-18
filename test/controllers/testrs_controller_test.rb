require 'test_helper'

class TestrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testr = testrs(:one)
  end

  test "should get index" do
    get testrs_url
    assert_response :success
  end

  test "should get new" do
    get new_testr_url
    assert_response :success
  end

  test "should create testr" do
    assert_difference('Testr.count') do
      post testrs_url, params: { testr: { active: @testr.active, name: @testr.name } }
    end

    assert_redirected_to testr_url(Testr.last)
  end

  test "should show testr" do
    get testr_url(@testr)
    assert_response :success
  end

  test "should get edit" do
    get edit_testr_url(@testr)
    assert_response :success
  end

  test "should update testr" do
    patch testr_url(@testr), params: { testr: { active: @testr.active, name: @testr.name } }
    assert_redirected_to testr_url(@testr)
  end

  test "should destroy testr" do
    assert_difference('Testr.count', -1) do
      delete testr_url(@testr)
    end

    assert_redirected_to testrs_url
  end
end
