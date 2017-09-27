class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :articles, :body, :article_text
    rename_column :comments, :user_id, :username
    rename_column :comments, :body, :comment_text
  end
end
