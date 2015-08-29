# require_relative 'flashcards'
# require 'byebug'

# module Parser
# # Read the data and give it to us.
#   # attr_reader :array

#   def self.parse_file(file)
#     array = []
#     File.open(file, 'r')  do |file|
#       file.each_line do |row|
#         array << row
#       end
#     end
#     array
#   end
# end

# module CreateCard
# # Create cards for us to use.
#   def self.create_card
#     card_hash = []
#     Parser.parse_file('flashcard_samples.txt').each_slice(2) do |definition, answer|
#       card_hash << {:definition => definition, :answer => answer}
#     end
#       byebug
#       newCard_array = []
#       card_hash.each do |card_object|
#         newCard_array << Card.new(card_object)
#       end
#       newCard_array
#   end

# end


# puts CreateCard.create_card

# # puts new_card = CreateCard.create_card
# #Card.new(new_card)
# #p new_card.class
# # puts test = Card.new(new_card)
# # puts
