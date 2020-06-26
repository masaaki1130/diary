class ChangeDataCommentToUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :comment, :text
  end
end
