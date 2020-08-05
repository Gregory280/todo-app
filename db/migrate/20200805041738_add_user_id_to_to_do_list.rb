class AddUserIdToToDoList < ActiveRecord::Migration[6.0]
  def change
    add_column :todo_lists, :user_id, :int
  end
end
