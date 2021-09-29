#subject returns an instance of the class under test.
#With a class argument,RSpec is able to instantiate an instance of the class and make it lazily available via the subject method.

RSpec.describe Hash do
    it 'should start off empty' do
        expect(subject.length).to eq(0)
        subject[:some_key] = "Some value"
        expect(subject.length).to eq(1)
    end

    it 'is isolated between examples' do
        expect(subject.length).to eq(0)
    end
end