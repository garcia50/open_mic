require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'

class JokeTest < Minitest::Test

  def test_if_joke_class_exist
    assert_instance_of Joke, Joke.new
  end

  def test_is_question_method_returns_question
    joke = Joke.new
    q = "Why did the strawberry cross the road?"

    assert_equal q, joke.question
  end

  def test_is_answer_method_returns_answer
    joke = Joke.new
    a = "Because his mother was in a jam."

    assert_equal a, joke.answer
  end

  def test_question_method_returns_answer
    joke = Joke.new
    q = joke.question
    a = joke.answer
    assert a, q
  end

end





















