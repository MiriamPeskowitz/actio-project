class CreateActionsTable < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.string	:date
      t.string  :title
      t.text  :description
      t.timestamps
 	end
  end
end
