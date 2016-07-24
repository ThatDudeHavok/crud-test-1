class Order < ActiveRecord::Base
  # Remember to create a migration!
  has_many :order_items
  has_many :items, through: :order_items
end
