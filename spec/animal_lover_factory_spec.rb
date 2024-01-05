require 'rspec'
require './lib/animal_lover_factory'
require './lib/animal_lover'

RSpec.describe AnimalLoverFactory do
  it 'exists' do 
    factory = AnimalLoverFactory.new 

    expect(factory).to be_a AnimalLoverFactory
  end

  it 'can create animal objects' do 
    factory = AnimalLoverFactory.new 

    expect(factory.create_animal_lovers('./data/animal_lovers.csv')).to be_a Array 
    expect(factory.create_animal_lovers('./data/animal_lovers.csv').first).to be_a AnimalLover
    expect(factory.create_animal_lovers('./data/animal_lovers.csv').first.first_name).to eq("Rubeus")
    expect(factory.create_animal_lovers('./data/animal_lovers.csv').count).to eq 6
  end
end