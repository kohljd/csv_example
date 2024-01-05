require 'csv'

class MagicalPetFactory
    def create_magical_pets(file_path)

        magical_pets = []

        CSV.foreach(file_path, headers: true, header_converters: :symbol) do |row|
            id = row[:id]
            name = row[:name]
            pet_owner_id = row[pet_owner_id]
            magical_pet = MagicalPet.new(id, name, pet_owner_id)
            magical_pets << magical_pet
        end
        
        magical_pets
    end
end