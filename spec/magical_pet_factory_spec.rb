require 'rspec'
require './lib/magical_pet_factory'
require './lib/magical_pet'

RSpec.describe MagicalPetFactory do
  it 'exists' do 
    factory = MagicalPetFactory.new 

    expect(factory).to be_a MagicalPetFactory
  end

  it 'can create animal objects' do 
    factory = MagicalPetFactory.new 

    expect(factory.create_magical_pets('./data/magical_pets.csv')).to be_a Array 
    expect(factory.create_magical_pets('./data/magical_pets.csv').first).to be_a MagicalPet
    expect(factory.create_magical_pets('./data/magical_pets.csv').first.name).to eq("Fluffy")
    expect(factory.create_magical_pets('./data/magical_pets.csv').count).to eq 9
  end
end