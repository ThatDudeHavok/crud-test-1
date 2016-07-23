class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname, null: false
      t.string :lname
      t.string :email, null: false
      t.string :password_hash, null: false

      t.timestamps(null: false)
    end
  end
end
