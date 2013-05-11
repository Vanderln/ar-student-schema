require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudents < ActiveRecord::Migration
  def change

    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :students do |t|
      # :name => '#{first_name} #last_name'
      t.string :name
      t.string :gender
      t.string :email
      t.string :phone
      t.string :address
      
      t.date :birthday
      
      
    end
  end
end
