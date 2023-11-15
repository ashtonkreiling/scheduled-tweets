class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      # DB Validates email is not null
      t.string :email, null: false
      t.string :password_digest

      t.timestamps
    end
  end
end
