class ActionItem < ApplicationRecord
  belongs_to :article
  belongs_to :action
end
