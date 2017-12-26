class AddUseridToActions < ActiveRecord::Migration
 
  def change
  	add_column :actions, :user_id, :integer
  end
end
