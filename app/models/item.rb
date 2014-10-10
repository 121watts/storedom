class Item < ActiveRecord::Base
  has_many :order_items
  has_many :orders, through: :order_items

  scope :active_items, -> { where(active: true) }
end
