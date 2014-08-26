class RemoveColumnTitleToUserlisit < ActiveRecord::Migration
  def change
    remove_column :user_lists, :title
  end
end
