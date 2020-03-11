#  first print the names of the students
student_count = 11
students = [
"Dr. Hannibal Lecter",
"Darth Vader",
"Nurse Ratched",
"Michael Corleone",
"Alex Delarge",
"the Wicked Witch of the West",
"Terminator",
"Freddy Krueger",
 "The Joker",
"Joffrey Baratheon",
"Norman Bates"
]

puts "The students of Villains Academy"
puts "-------------"
students.each do |student|
  puts student
end

# then print the number of students.
puts "Overall, we have #{student_count} great students"
