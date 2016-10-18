class CreateTestrs < ActiveRecord::Migration[5.0]
  def change
    create_table :testrs do |t|
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
