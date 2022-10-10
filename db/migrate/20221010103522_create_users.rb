class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :phone_number
      t.string :location
      t.string :profile_pic
      t.integer :user_type, default: 0

      t.timestamps
    end
  end
end
