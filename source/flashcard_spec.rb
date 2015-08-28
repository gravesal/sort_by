require_relative 'flashcards.rb'

describe Parser  do
  describe "#get_cards_from_file" do
    it "should parse each pair as aa array of hashes" do
      expect(Parser.get_cards_from_file("flashcard_samples.txt")).to be_a_kind_of(Array)
    end
  end
end
