class Car
    def initialize(model)
        @model = model
    end
end

class Garage
    attr_reader :storage

    def initialize
        @storage = []
    end

    def add_to_collection(model)
        @storage << Car.new(model)
    end
end

RSpec.describe Garage do
    let(:car) { instance_double(Car) }

    before do
        allow(Car).to receive(:new).and_return(car)
    end

    it 'adds a car to its storage' do
        subject.add_to_collection('Honda Civic')
        expect(Car).to have_received(:new).with('Honda Civic')
        expect(subject.storage.length).to eq(1)
        expect(subject.storage.first).to eq(car)
    end
end


RSpec.describe 'spies' do
    let(:animal) { spy('animal') }

    it 'confirms that a message has been received' do
        animal.eat_food
        expect(animal).to have_received(:eat_food)
        expect(animal).not_to have_received(:eat_human)
    end

    it 'resets between examples' do
        expect(animal).not_to have_received(:eat_food)
    end

    it 'retains the same functionality of a regular double' do
        animal.eat_food
        animal.eat_food
        animal.eat_food('Sushi')
        expect(animal).to have_received(:eat_food).exactly(3).times
        expect(animal).to have_received(:eat_food).at_least(2).times
        expect(animal).to have_received(:eat_food).with('Sushi')
        expect(animal).to have_received(:eat_food).once.with('Sushi')
    end
end