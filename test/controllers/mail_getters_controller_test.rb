require 'test_helper'

class MailGettersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mail_getter = mail_getters(:one)
  end

  test "should get index" do
    get mail_getters_url
    assert_response :success
  end

  test "should get new" do
    get new_mail_getter_url
    assert_response :success
  end

  test "should create mail_getter" do
    assert_difference('MailGetter.count') do
      post mail_getters_url, params: { mail_getter: { address: @mail_getter.address, enable_ssl: @mail_getter.enable_ssl, method: @mail_getter.method, password: @mail_getter.password, port: @mail_getter.port, user_id: @mail_getter.user_id, user_name: @mail_getter.user_name } }
    end

    assert_redirected_to mail_getter_url(MailGetter.last)
  end

  test "should show mail_getter" do
    get mail_getter_url(@mail_getter)
    assert_response :success
  end

  test "should get edit" do
    get edit_mail_getter_url(@mail_getter)
    assert_response :success
  end

  test "should update mail_getter" do
    patch mail_getter_url(@mail_getter), params: { mail_getter: { address: @mail_getter.address, enable_ssl: @mail_getter.enable_ssl, method: @mail_getter.method, password: @mail_getter.password, port: @mail_getter.port, user_id: @mail_getter.user_id, user_name: @mail_getter.user_name } }
    assert_redirected_to mail_getter_url(@mail_getter)
  end

  test "should destroy mail_getter" do
    assert_difference('MailGetter.count', -1) do
      delete mail_getter_url(@mail_getter)
    end

    assert_redirected_to mail_getters_url
  end
end
