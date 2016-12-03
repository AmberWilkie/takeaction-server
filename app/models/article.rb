class Article < ApplicationRecord
  belongs_to :cause
  has_many :action_items
  has_many :actions, through: :action_items
  
  private
end
