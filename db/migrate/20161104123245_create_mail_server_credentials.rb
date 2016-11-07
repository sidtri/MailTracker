class CreateMailServerCredentials < ActiveRecord::Migration[5.0]
  def change
    create_table :mail_server_credentials do |t|
      t.references :user, foreign_key: true
      t.string :address
      t.integer :port
      t.string :user_name
      t.string :password
      t.string :authentication

      t.timestamps
    end
  end
end
