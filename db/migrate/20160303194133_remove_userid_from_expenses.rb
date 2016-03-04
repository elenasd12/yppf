class RemoveUseridFromExpenses < ActiveRecord::Migration
  def change
    remove_column :expenses, :userid, :text
  end
end
