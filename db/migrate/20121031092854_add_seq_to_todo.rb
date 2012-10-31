class AddSeqToTodo < ActiveRecord::Migration
  def change
    add_column :todos, :seq, :integer
  end
end
