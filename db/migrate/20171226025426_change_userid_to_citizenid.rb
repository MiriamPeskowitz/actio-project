class ChangeUseridToCitizenid < ActiveRecord::Migration
  def change
  	rename_column :actions, :user_id, :citizen_id
  end
end
