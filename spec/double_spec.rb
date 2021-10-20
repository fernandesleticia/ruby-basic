RSpec.describe 'a random double' do
    it 'only allows defined methods to be invoked' do
        #stuntman = double("Mr. Danger", fall_off_ladder: 'Ouch', light_on_fire: true)
        #expect(stuntman.fall_off_ladder).to eq('Ouch')
        #expect(stuntman.light_on_fire).to eq(true)

        #stuntman = double('Mr. Danger')
        #allow(stuntman).to receive(:fall_off_ladder)
        #allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')
        #expect(stuntman.fall_off_ladder).to eq('Ouch')

        stuntman = double('Mr. Danger')
        allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
        expect(stuntman.fall_off_ladder).to eq('Ouch')
        expect(stuntman.light_on_fire).to eq(true)
    end
end

class Actor
    def initialize(name)
        @name = name
    end

    def ready?
        sleep(3)
        true
    end

    def act
        'I love you baby'
    end

    def fall_off_ladder
        'Call my agent! No way!'
    end

    def light_on_fire
        false
    end
end

class Movie
    def initialize(actor)
        @actor = actor
    end

    def start_shooting
        if actor.ready?
            actor.act
            actor.fall_off_ladder
            actor.light_on_fire
        end
    end
end

actor = Actor.new('Brad Pitt')
movie = Movie.new(actor)
movie.start_shooting