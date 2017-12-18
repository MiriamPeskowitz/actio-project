class CreateCitizensTable < ActiveRecord::Migration
  def change

    create_table :citizens do |t|
      t.string  :username
      t.string  :email
      t.string  :password_digest
 
  end
end
