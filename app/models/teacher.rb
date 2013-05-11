require_relative '../../db/config'
require 'date'



# implement your Student model here
class Teacher < ActiveRecord::Base
   
  has_many :students, :through => :student_teachers
  

  validate :email_format 
  validates :email, :uniqueness => true

  
  def name
    "#{first_name} #{last_name}"
  end

  def age
    today = Date.today
    birthday_past?(today) ? today.year - birthday.year : today.year - birthday.year - 1
  end

  def birthday_past?(today)

    today.month > birthday.month && today.day > birthday.day    
  end

  def email_format
    check = email =~ /.+@.+\..{2,}/ 
    
    errors.add(:email, "Wrong email format") if check != 0
  end

 

end
