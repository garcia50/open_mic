require './lib/joke'

class User
  attr_reader :name, :question, :answer, :joke

  def initialize(name)
    @name = name
    @question = question
    @joke = joke
    @jokes = []
    @count = 0
  end

  def learn(joke)
    @jokes = @joke.question
  end

  def tell(name, joke)
    @joke.question
    @count += 1
    @jokes << @count
  end

end
    
sal = User.new("Sal")
sal.learn(joke)
sal.jokes

ali = User.new("Ali")
sal.tell(ali, joke)
