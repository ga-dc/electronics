class Item < ActiveRecord::Base
  has_many :borrowings
end