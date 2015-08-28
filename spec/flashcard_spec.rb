require_relative '../source/flashcards.rb'

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
