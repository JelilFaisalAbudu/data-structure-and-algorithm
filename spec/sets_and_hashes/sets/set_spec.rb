require '../repl/sets_and_hashes/set/find_duplicates.rb'

describe "Duplicate Finder" do
  context "given a list of items have two duplicate items" do
    it "should return an array of those two elements" do
      expect(find_duplicates([1, 2, 3, 1, 5, 6, 7, 8, 5, 2])).to  eq([1, 5, 2])
    end
  end

  context "given an array elements with only one duplicate" do
    it 'should return an array with one element' do
      expect(find_duplicates([3, 501, 17, 23, -43, 67, 5, 888, -402, 235, 77, 99, 311, 1, -43])).to  eq([-43])
    end
  end
  

  context "given a array of unique elements" do
    it 'should return an array  empty array' do
      expect(find_duplicates([3, 501, 17, 23, 67, 5, 888, -402, 235, 77, 99, 311, 1, -43])).to  eq([])
    end
  end
  
end
