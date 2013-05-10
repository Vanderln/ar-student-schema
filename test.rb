require 'faker'
require_relative 'app/models/teacher'
require_relative 'app/models/student'
require_relative 'app/models/student_teachers'
require_relative 'db/config'

# 9.times do
#   Teacher.create!(:first_name => Faker::Name.first_name, :last_name => Faker::Name.last_name, :email => Faker::Internet.email)
# end

 # Teacher.all

# p Student.all.count

# 30.times do |match|
#   match = StudentTeacher.create( :student_id => (1..27).to_a.sample, :teacher_id => (1..9).to_a.sample)
# end 
 p Teacher.where(:id => '6')
 p StudentTeacher.where(:teacher_id => '6')
