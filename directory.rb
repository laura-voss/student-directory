@students = [] # an empty array accessible to all methods

def print_menu
  # 1. print the menu and ask the user what to do
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit" 
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students 
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def show_students
  print_header
  print_students_list
  print_footer
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get the first name
  name = gets.chomp 
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to array
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    # get another name from the user
    name = gets.chomp
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_students_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

#nothing happens until we call the methods
interactive_menu
students = input_students
print_header
print(students)
print_footer(students)