class AddCategoryIdToTasks < ActiveRecord::Migration[8.0]
  def change
    add_reference :tasks, :category, null: false, foreign_key: true
    remove_column :tasks, :category, :string # Remove the old string column
  end
end
