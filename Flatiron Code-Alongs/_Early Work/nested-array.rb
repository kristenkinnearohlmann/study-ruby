students = ["Mike","Tim","Monique"]
# puts students[0]

nested_students=[
    ["Mike","Grade 10","A average"],
    ["Tim","Grade 10","C average"],
    ["Monique","Grade 11","B average"]
]

# puts nested_students[0][0]

# mike=nested_students[0]
# puts mike[0]
# puts 

students << "Sarah"
# puts students
# puts

nested_students[2] << "Class President"
# puts nested_students

students.each do |student|
    puts student
end
puts
nested_students.each do |student_array|
    student_array.each do |student_detail|
    puts student_detail
    end
end