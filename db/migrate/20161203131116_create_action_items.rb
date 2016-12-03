class CreateActionItems < ActiveRecord::Migration[5.0]
  def change
    create_table :action_items do |t|
      t.string :link
      t.string :phone
      t.string :email
      t.text :info

      t.timestamps
    end
  end
end
