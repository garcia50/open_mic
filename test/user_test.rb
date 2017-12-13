require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/user'
require './lib/joke'

class UserTest < Minitest::Test
  attr_reader :sal, :joke, :joke_2

  def setup
    @sal = User.new("Sal")
    @joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?", 
                      answer: "Because his mother was in a jam."})
    @joke_2 = Joke.new({id: 1, question: "What did the flower say to the bike?", 
                      answer: "Petal"})
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

  def test_sal_tells_joke_to_ali
    ali = User.new("Ali")
    sal.tell(ali, joke)
   
    assert_equal [joke], ali.jokes
    assert_equal 1, ali.jokes.count
  end

  def test_ilana_can_perform_routine_for_josh
    ilana = User.new("Ilana")
    josh = User.new("Josh")
    ilana.learn(joke)
    ilana.learn(joke_2)
    ilana.perform_routine_for(josh)
    
    assert_equal [joke, joke_2], josh.jokes
    assert_equal 2, josh.jokes.count
  end

  def test_casey_can_learn_100_jokes
    casey = User.new("Casey")
    casey.learn_routine('./jokes.csv')

    assert_equal 100, casey.jokes.count
  end

end




















