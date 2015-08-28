require_relative 'flashcards.rb'

describe Parser  do
  describe "#get_cards_from_file" do
    it "should parse each pair as an array of hashes" do
      expect(Parser.get_cards_from_file("flashcard_samples.txt")).to be_a_kind_of(Array)
    end
  end
end

describe Card do

  card_info = {:definition => "Describe some crazy thing", :answer => "this is crazy"}

  let(:card) { Card.new(card_info) }

  describe "#initialize" do
    it "should initialize as a kind of card" do
      expect(card).to be_a_kind_of(Card)
    end

    it "it should have the proper attributes" do
      expect(card).to have_attributes(:definition => "Describe some crazy thing", :answer => "this is crazy")
    end

  end
end
