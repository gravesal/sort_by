# Main file for
module Parser
  def self.get_cards_from_file(file)
    file = "flashcard_samples.txt"
    array = []
    File.open(file, 'r')  do |file|
      file.each_line.each_slice(2) do |definition, answer|
        array << {definition: definition, answer: answer}
      end
    end
    array
  end
end


# File.open('path/to/file', 'r') do |file|
#   # each_line gives an Enumerator object. On which I'm calling
#   # each_slice to take 2 lines at a time, where first line is the
#   # question, and the second one is the answer.
#   file.each_line.each_slice(2).do |question, answer|
#     array << {'Question' => question, 'Answer' => answer}
#   end
# end
