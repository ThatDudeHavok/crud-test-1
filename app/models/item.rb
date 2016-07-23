class Item < ActiveRecord::Base
  # Remember to create a migration!
  has_many :order_items
  has_many :orders, through: :order_items
end
