class CreateOrdersTable < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :location
      t.integer :user_id

      t.timestamps(null: false)
    end
  end
end
