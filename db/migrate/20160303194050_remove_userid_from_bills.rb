class RemoveUseridFromBills < ActiveRecord::Migration
  def change
    remove_column :bills, :userid, :text
  end
end
