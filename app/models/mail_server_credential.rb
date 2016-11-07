# == Schema Information
#
# Table name: mail_server_credentials
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  address        :string
#  port           :integer
#  user_name      :string
#  password       :string
#  authentication :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_mail_server_credentials_on_user_id  (user_id)
#

class MailServerCredential < ApplicationRecord
  belongs_to :user
end
