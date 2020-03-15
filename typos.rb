@students = [] # an empty array accessiblt to all methods

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
  # add the student hash to the array
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students".center(30," ")
  # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  @students
end

def print_header
  puts "The students of my cohort at Makers Academy".center(30," ")
  puts "-------------".center(30," ")
end

def print_students_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)".center(30," ")
  end
end

def print_footer
  if @students.count > 0
    puts "Overall, we have #{@students.count} great students".center(30," ")
  else
    puts "Unfortunately the school has had to close due to lack of pupils.".center(30," ")
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit" # 9 because we'll be adding more items
  # 2. read the input and save it into a variable
end

def show_students
  print_header
  print_students_list
  print_footer
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "9"
    exit
  else
    puts "I don't know what you want me to do."
  end
end



def interactive_menu
  loop do
    # 1. print the menu and ask the user what to do
    print_menu
    # 3. do what the user has asked
    process(gets.chomp)
  end
end

interactive_menu
