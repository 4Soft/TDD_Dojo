require 'test/unit'
require_relative 'jokenpo'

class TestJokenpo < Test::Unit::TestCase
	
	def setup
    @jokenpo = Jokenpo.new
  end

	def test_tesoura_wins
		expected = @jokenpo.play_match(:tesoura, :papel)
		assert_equal expected, :player1

		expected2 = @jokenpo.play_match(:papel, :tesoura)
		assert_equal expected2, :player2
	end

	def test_papel_wins
		expected = @jokenpo.play_match(:papel, :pedra)
		assert_equal expected, :player1

		expected2 = @jokenpo.play_match(:pedra, :papel)
		assert_equal expected2, :player2
	end

	def test_pedra_wins
		expected = @jokenpo.play_match(:pedra, :tesoura)
		assert_equal expected, :player1

		expected2 = @jokenpo.play_match(:tesoura, :pedra)
		assert_equal expected2, :player2
	end

	def test_empate
		expected = @jokenpo.play_match(:papel, :papel)
		assert_equal expected, :draw

		expected2 = @jokenpo.play_match(:pedra, :pedra)
		assert_equal expected2, :draw

		expected3 = @jokenpo.play_match(:tesoura, :tesoura)
		assert_equal expected2, :draw
	end

end

