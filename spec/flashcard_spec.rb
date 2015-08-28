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


describe CardDeck do
  let(:card_deck){ CardDeck.new([])}

  let(:deck){[Card.new(:definition => "Who are you", :answer => "not you")
              Card.new(:definition => "Describe some crazy thing", :answer => "this is crazy")
              Card.new(:definition => "what is ruby", :answer => "magical")
              Card.new(:definition => "got methods", :answer => "yeah!")
  ]

  }

  describe "#initialize" do
    it "1. should initialize CardDeck objects" do
      expect(card_deck).to be_a_kind_of(CardDeck)
    end
  end

  describe "#shuffle" do
    it "2. should shuffle array" do
      expect(deck.last)..should_not eql(deck.last)
    end
  end
end
