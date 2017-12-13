class Joke
  attr_accessor :id, :question, :answer

  def initialize(joke)
    @joke = joke
    @id = joke[:id]
    @question = joke[:question]
    @answer = joke[:answer]
  end
  
end

