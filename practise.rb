#Library for Timmer use in RUBY
require 'timeout'
#CSV file library use in ruby
require "csv"
#CSV file import process and syntax
file = CSV.parse(File.read("problems.csv"))
#Method is defined and attributes is defined
def ask_question(question, answer, timer_answer)
  puts "--> SIMPLIFY THE FOLLOWING <--"
  puts question
  #timer second declaration
timer_answer = 3
score = 0
#variable declaration use for saving file length
variable=file.length
#for loop is to simplification till last index
for a in 0..variable-1 do
    correct = ask_question(file[a][0], file[a][1], timer_answer)
    score += 1 if correct
end
  Timeout::timeout(timer_answer) do
    user_ans = gets.chomp
    return user_ans === answer
  end
#Timer Library extention for this
rescue Timeout::Error
  return false
end

#prints Statement and Solutions prints
puts "TOTAL NUMBER OF SIMPLICATION QUESTIONS: #{variable}"
puts "TOTAL NUMBER OF CORRECT ANSWERS:#{score}"