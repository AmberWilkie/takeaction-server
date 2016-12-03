class Action < ApplicationRecord
  has_many :action_items
  has_many :articles, through: :action_items
end
