# Read and use the ruby docs for CSV found here [https://ruby-doc.org/stdlib-2.6.5/libdoc/csv/rdoc/CSV.html]
# Within the runner.rb file, write some code that will print each row from animal_lovers.csv to the terminal.
# When you’ve been able to print each row, then see if you can also print the header with the value for each row.

# If you are stuck, reference this page for help: https://backend.turing.edu/module1/lessons/csv_walkthrough
require 'csv'
require './lib/animal_lover'

animal_lovers = []

CSV.foreach('./data/animal_lovers.csv', headers: true, header_converters: :symbol) do |row|
    id = row[:id].to_i
    first_name = row[:first_name]
    last_name = row[:last_name]
    age = row[:age].to_i
    animal_lover = AnimalLover.new(id,first_name,last_name,age)
    animal_lovers << animal_lover
    require 'pry'; binding.pry
  
    puts "#{animal_lover.full_name} has been created!"
  end