require '../repl/sets_and_hashes/hashes/hash_table.rb'

describe "Hash table" do
  context 'Given a list, [12, 24, 125, 5, 91, 1106, 2, 1021, 29, 3536, 10] as a hash table' do
    it "Return an array with the numbers in the order that they appear in the hash table." do
      expect(hash_table([12, 24, 125, 5, 91, 1106, 2, 1021, 29, 3536, 10])).to  eql([12, 24, 2, 91, 125, 5, 3536, 1106, 29, 1021, 10])
    end
  end

  context 'Given a list, [2, 341, 73, 8265, 234004, 602, 7400000, 200000000] as a hash table' do
    it "Return an array with the numbers in the order that they appear in the hash table." do
      expect(hash_table([2, 341, 73, 8265, 234004, 602, 7400000, 200000000])).to  eql([341, 234004, 2, 200000000, 7400000, 8265, 73, 602])
    end
  end
end
