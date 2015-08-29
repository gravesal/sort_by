require_relative 'parser'

# Main file for
class Card
  attr_reader :definition, :answer

  def initialize(new_card = {})
    @definition = new_card[:definition]
    @answer = new_card[:answer]
  end

  def is_correct?(user_response)
    if user_response == @answer
      true
    else
      false
    end
  end

  def to_s
    "#{definition}" #and #{answer}"
  end
end

class Deck

  attr_reader :deck

  def initialize
    @deck = CreateCard.create_card
  end

end

module CreateCard
# Create cards for us to use.
  def self.create_card
    card_hash = []
    Parser.parse_file('flashcard_samples.txt').each_slice(2) do |definition, answer|
      card_hash << {:definition => definition, :answer => answer}
    end
      newCard_array = []
      card_hash.each do |card_object|
        newCard_array << Card.new(card_object)
      end
      newCard_array
  end
end

module Parser
# Read the data and give it to us.
  # attr_reader :array

  def self.parse_file(file)
    array = []
    File.open(file, 'r')  do |file|
      file.each_line do |row|
        array << row
      end
    end
    array
  end
end


