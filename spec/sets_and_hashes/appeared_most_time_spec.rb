require_relative '../../repl/sets_and_hashes/appeared_most_times.rb'

describe 'Check and return the most appeared element in an array' do
  context 'Given a list' do
    it 'should return 1 as most occurred in the list' do
      expect(appears_most_times([1, 2, 3, 1, 5])).to eql(1)
    end

    it 'should return 88 as the most ocurred in the list' do
      expect(appears_most_times([23, 43, 67, 88, 42, 35, 77, 88, 99, 11])).to eql(88)
    end

    it 'should return 4376 as the most occurred in the list' do
      expect(appears_most_times([4376, -345, -345, 4376, -345, 84_945, 4376, -345, -26_509, 4376, 84_945, 84_945, -26_509, 896_341, 4376])).to eql(4376)
    end
  end
end
