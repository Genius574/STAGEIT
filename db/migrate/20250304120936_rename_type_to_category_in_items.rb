class RenameTypeToCategoryInItems < ActiveRecord::Migration[7.1]
  def change
    rename_column :items, :type, :category
  end
end
