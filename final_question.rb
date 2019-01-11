students = [
  ["john", 28],
  ["mary", 25],
  ["paul", 21]
]

hash_of_student = students.map do |student|
   {
    name: student[0],
    age: student[1]
  }
end

p hash_of_student
