require_relative '../../db/config'
require 'date'



# implement your Student model here
class Student < ActiveRecord::Base
  validate :email_format 
  validates :email, :uniqueness => true
  validate :age_restrict
  validates :phone, format: { with: /.{9,}/ }
  
  
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

  def age_restrict
    errors.add(:age_restrict, "Not eligible to be a student, too young") if age < 5
  end

end
