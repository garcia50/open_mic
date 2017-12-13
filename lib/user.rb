require './lib/joke'
require 'csv'

class User
  attr_reader :name, :jokes, :count

  def initialize(name)
    @name = name
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

  def learn_routine(jokes)
    CSV.foreach(jokes, headers: true) do |row|
      self.learn(row)
      @count += 1
    end
  end

end