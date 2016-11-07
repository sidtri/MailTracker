require 'test_helper'

class MailServerCredentialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mail_server_credential = mail_server_credentials(:one)
  end

  test "should get index" do
    get mail_server_credentials_url
    assert_response :success
  end

  test "should get new" do
    get new_mail_server_credential_url
    assert_response :success
  end

  test "should create mail_server_credential" do
    assert_difference('MailServerCredential.count') do
      post mail_server_credentials_url, params: { mail_server_credential: { address: @mail_server_credential.address, authentication: @mail_server_credential.authentication, password: @mail_server_credential.password, port: @mail_server_credential.port, user_id: @mail_server_credential.user_id, user_name: @mail_server_credential.user_name } }
    end

    assert_redirected_to mail_server_credential_url(MailServerCredential.last)
  end

  test "should show mail_server_credential" do
    get mail_server_credential_url(@mail_server_credential)
    assert_response :success
  end

  test "should get edit" do
    get edit_mail_server_credential_url(@mail_server_credential)
    assert_response :success
  end

  test "should update mail_server_credential" do
    patch mail_server_credential_url(@mail_server_credential), params: { mail_server_credential: { address: @mail_server_credential.address, authentication: @mail_server_credential.authentication, password: @mail_server_credential.password, port: @mail_server_credential.port, user_id: @mail_server_credential.user_id, user_name: @mail_server_credential.user_name } }
    assert_redirected_to mail_server_credential_url(@mail_server_credential)
  end

  test "should destroy mail_server_credential" do
    assert_difference('MailServerCredential.count', -1) do
      delete mail_server_credential_url(@mail_server_credential)
    end

    assert_redirected_to mail_server_credentials_url
  end
end
