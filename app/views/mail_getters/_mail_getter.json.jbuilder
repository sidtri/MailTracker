json.extract! mail_getter, :id, :method, :address, :port, :user_name, :password, :enable_ssl, :user_id, :created_at, :updated_at
json.url mail_getter_url(mail_getter, format: :json)