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

  def tell(name, joke)
    name.learn(joke) 
    @count += 1
  end

  def perform_routine_for(person)
    jokes.each do |joke|
      self.tell(person, joke)
      @count += 1
    end
  end

end
    
# sal = User.new("Sal")
# sal.learn(joke)
# sal.jokes

# ali = User.new("Ali")
# sal.tell(ali, joke)
