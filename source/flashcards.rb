# Main file for
class Card
  attr_reader :definition, :answer

  def initialize(cards = {})
    @definition = cards[:definition]
    @answer = cards[:answer]
  end

  def to_s
    "#{definition} and #{answer}"
  end

  # def create_card
  #   Parser.get_cards_from_file("flashcard_samples.txt")
  # end
end

module Parser
  def self.get_cards_from_file(file)
    file = "flashcard_samples.txt"
    card_array = []
    File.open(file, 'r')  do |file|
      file.each_line.each_slice(2) do |definition, answer|
        card_array << {definition: definition, answer: answer}
      end
    end
    card_array
  end
end


#to_s method will

#puts Parser.get_cards_from_file("flashcard_samples.txt")
# card_info = {:definition => "Describe some crazy thing", :answer => "this is crazy"}
# test_card = Card.new(card_info)
# puts test_card
