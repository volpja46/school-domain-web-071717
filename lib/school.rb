class School

   attr_accessor :name, :roster

   def initialize(name)
     @name = name
     @roster = {}
   end

   def add_student(name, grade)
     roster[grade] = [] unless roster[grade]
     roster[grade] << name
   end

   def grade(num)
     roster[num]
   end

   def sort
     sort_students = {}
     roster.each do |grade, names|
       sort_students[grade] = names.sort
     end
     sort_students
   end
 end
