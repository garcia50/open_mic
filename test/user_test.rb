require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/user'

class UserTest < Minitest::Test
  def test_it_exists
    sal = User.new("Sal")

    assert_instance_of User, sal
  end

  def test_it_has_a_name
    sal = User.new("Sal")

    assert_equal "Sal", sal.name
  end

  def test_it_can_have_another_name
    ali = User.new("Ali")

    assert_equal "Ali", ali.name
  end

  def test_id_method_returns_id
    joke = Joke.new
    a = joke.id
    
    assert_equal a, joke.id
  end

  def test_if_learn_method_returns_question
    joke = Joke.new
    q = joke.question

    assert_equal q, joke.question
  end

end
