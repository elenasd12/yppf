class RemoveUseridFromIncomes < ActiveRecord::Migration
  def change
    remove_column :incomes, :userid, :text
  end
end
