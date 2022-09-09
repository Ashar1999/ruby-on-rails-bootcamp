#CSV file library use in ruby
require "csv"
#CSV file import process and syntax
file = CSV.parse(File.read("problems.csv"))
correct=0
#variable declaration use for saving file length
variable=file.length
#for loop is to simplification till last index
for a in 0..x-1 do
#Adding Data in array so far!
    puts"SIMPLIFICATION OF #{file[a][0]} ?"
    ans = gets
#File data extraction and data is imported from file in CSV
    if file[a][1].chomp.to_i ==ans.chomp.to_i
        correct=correct+1
    end
end
#prints Statement and Solutions prints
puts "TOTAL NUMBER OF SIMPLICATION QUESTIONS: #{variable}"
puts "TOTAL NUMBER OF CORRECT ANSWERS: #{correct}"
puts "TOTAL NUMBER OF WRONG ANSWERS: #{variable-correct}"