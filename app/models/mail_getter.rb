# == Schema Information
#
# Table name: mail_getters
#
#  id         :integer          not null, primary key
#  method     :string
#  address    :string
#  port       :string
#  user_name  :string
#  password   :string
#  enable_ssl :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_mail_getters_on_user_id  (user_id)
#

class MailGetter < ApplicationRecord
  belongs_to :user
end
