# == Schema Information
#
# Table name: ahoy_messages
#
#  id         :integer          not null, primary key
#  token      :string
#  to         :text
#  user_id    :integer
#  user_type  :string
#  mailer     :string
#  subject    :text
#  sent_at    :datetime
#  opened_at  :datetime
#  clicked_at :datetime
#
# Indexes
#
#  index_ahoy_messages_on_token                  (token)
#  index_ahoy_messages_on_user_id_and_user_type  (user_id,user_type)
#

class AhoyMessage < ApplicationRecord
end
