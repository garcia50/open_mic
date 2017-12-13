require './lib/joke'

class User
  attr_reader :name, :jokes, :count

  def initialize(name)
    @name = name
    # @question = question
    # @joke = joke
    @jokes = []
    @count = 0
  end

  def learn(joke)
    @jokes << joke
  end

  # def tell(name, joke)
  #   @joke.question
  #   @jokes << @count
  #   @count += 1
  # end

end
    
# sal = User.new("Sal")
# sal.learn(joke)
# sal.jokes

# ali = User.new("Ali")
# sal.tell(ali, joke)
