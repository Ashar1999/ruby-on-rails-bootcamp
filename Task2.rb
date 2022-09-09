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
timer_time = 5
score = 0
#variable declaration use for saving file length
Timeout::timeout(timer_time) do
#for loop is to simplification till last index
  for a in 0..file.length-1 do
    correct = ask_question(file[a][0], file[a][1], timer_time)
    score += 1 if correct
  end
end
  
    ans = gets.chomp
    return ans === answer
#Timer Library extention for this


  rescue Timeout::Error
    return false
  end
#prints Statement and Solutions prints
puts "TOTAL"
puts "TOTAL NUMBER OF SIMPLICATION QUESTIONS: #{file.length}"
puts "TOTAL NUMBER OF CORRECT ANSWERS:#{score}"