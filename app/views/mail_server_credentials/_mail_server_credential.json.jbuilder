json.extract! mail_server_credential, :id, :user_id, :address, :port, :user_name, :password, :authentication, :created_at, :updated_at
json.url mail_server_credential_url(mail_server_credential, format: :json)