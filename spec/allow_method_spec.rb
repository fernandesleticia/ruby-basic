RSpec.describe 'allow method review' do
    it 'can costumize return value for methods on doubles' do
        calculator = double
        allow(calculator).to receive(:add)
        allow(calculator).to receive(:minus).and_return(15)

        expect(calculator.add).to be_nil
        expect(calculator.minus).to eq(15)

        expect(calculator.minus(3)).to eq(15)
        expect(calculator.minus(-3, -2 -5)).to eq(15)
        expect(calculator.minus('hello')).to eq(15)
    end

    it 'can stub one or more methods on a real object' do
        arr = [1,2,3]
        allow(arr).to receive(:sum).and_return(10)

        expect(arr.sum).to eq(10)

        arr.push(4)
        expect(arr).to eq([1,2,3,4])
    end

    it 'can return multiple return values in sequence' do
        mock_array = double
        allow(mock_array).to receive(:pop).and_return(:c, :b, nil)
        expect(mock_array.pop).to eq(:c)
        expect(mock_array.pop).to eq(:b)
        expect(mock_array.pop).to be_nil
        expect(mock_array.pop).to be_nil
        expect(mock_array.pop).to be_nil
    end
end