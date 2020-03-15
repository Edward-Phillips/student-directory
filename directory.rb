#  first print the names of the students
student_count = 11
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]

def print_header
puts "The students of Villains Academy"
puts "-------------"
end

def print(names,letter)
  names.each do |name|
    if name[:name].chr.downcase == letter.downcase
    puts "#{names.index(name) + 1}. #{name[:name]} (#{name[:cohort]} cohort)"
  end
  end
end

# then print the number of students.

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

def input_students
  puts "first choose which students get to live by picking the first letter of their name."
  letter = gets.chomp
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create empty array
  students = []
  # get the first name
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  return students, letter
end

students, letter = input_students
print_header
print(students, letter)
print_footer(students)
