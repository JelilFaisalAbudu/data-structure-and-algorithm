require_relative '../added_pairs.rb'

describe 'Added Pairs' do
  context 'Given a list of numbers to find all pairs whose sum is k' do
    it 'returns [[1, 11], [9, 3]] from the list [1, 9, 11, 13, 2, 3, 7] whose sum is 12' do
      expect(find_added_pairs([1, 9, 11, 13, 2, 3, 7], 12)).to eq([[1, 11], [9, 3]])
    end

    it 'returns [[-8, 8], [9, -9]] from the list [1, 9, 11, 13, 2, 3, 7] whose sum is 0' do
      expect(find_added_pairs([-8, 7, 11, 8, 5, 9, 3, 6, 2, -9, 4], 0)).to eq([[-8, 8], [9, -9]])
    end
  end
end
