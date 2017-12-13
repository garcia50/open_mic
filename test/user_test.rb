require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/user'
require './lib/joke'

class UserTest < Minitest::Test
  attr_reader :sal, :joke

  def setup
    @sal = User.new("Sal")
    @joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?", 
                      answer: "Because his mother was in a jam."})
  end

  def test_it_exists
    assert_instance_of User, sal
  end

  def test_it_has_a_name
    assert_equal "Sal", sal.name
  end

  def test_it_can_have_another_name
    ali = User.new("Ali")
    
    assert_equal "Ali", ali.name
  end
    
  def test_id_method_returns_id
    assert_equal 1, joke.id
  end

  def test_if_learn_method_returns_question
    q = @joke.question

    assert_equal q, joke.question
  end

  def test_sal_can_learn_joke
    sal.learn(joke)
   assert_equal [joke], sal.jokes
  end

  # def test_
    
  # end

end




















