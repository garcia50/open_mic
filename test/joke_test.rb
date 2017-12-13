require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'

class JokeTest < Minitest::Test
  attr_reader :joke

  def setup
    @joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?", 
                      answer: "Because his mother was in a jam."})
  end

  def test_if_joke_class_exist
    assert_instance_of Joke, joke
  end

  def test_joke_id_returns_1
    assert_equal 1, joke.id
  end

  def test_is_question_method_returns_question
    @joke = joke
    q = "Why did the strawberry cross the road?"

    assert_equal q, joke.question
  end

  def test_is_answer_method_returns_answer
    @joke = joke
    a = "Because his mother was in a jam."

    assert_equal a, joke.answer
  end

  def test_question_method_returns_answer
    @joke = joke
    q = joke.question
    a = joke.answer
    assert a, q
  end

end





















