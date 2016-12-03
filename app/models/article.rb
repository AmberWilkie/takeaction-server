class Article < ApplicationRecord
  belongs_to :cause
  has_many :actions
  
  private
end
