class CreateMailGetters < ActiveRecord::Migration[5.0]
  def change
    create_table :mail_getters do |t|
      t.string :method
      t.string :address
      t.string :port
      t.string :user_name
      t.string :password
      t.string :enable_ssl
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
