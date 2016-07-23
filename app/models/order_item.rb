class OrderItem < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :order
  belongs_to :item
end
