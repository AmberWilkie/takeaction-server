class AddCauseToArticles < ActiveRecord::Migration[5.0]
  def change
    add_reference :articles, :cause, foreign_key: true
  end
end
