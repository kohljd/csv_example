require 'csv'

class AnimalLoverFactory
    def create_animal_lovers (file_path)
        animal_lovers = []

        CSV. foreach (file_path, headers: true, header_converters: :symbol)
            id = row[:id]
            first_name = row[:first_name]
            last_name = row[: last_name]
            age = row[:age]
            animal_lovers << AnimalLover.new(id, first_name, last_name, age)
        end

        animal_lovers
    end
end