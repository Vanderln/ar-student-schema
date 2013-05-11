require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateTeachers < ActiveRecord::Migration
  
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :teachers do |t|
      # :name => '#{first_name} #last_name'
      t.string :name
      
      t.string :gender
      t.string :email
      t.string :phone
      t.date :birthday
      
      
      
    end
  end
end
