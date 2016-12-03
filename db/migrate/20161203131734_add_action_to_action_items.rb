class AddActionToActionItems < ActiveRecord::Migration[5.0]
  def change
    add_column :action_items, :action_id, :integer
    add_column :action_items, :article_id, :integer
  end
end
