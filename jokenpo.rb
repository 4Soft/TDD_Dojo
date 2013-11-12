class Jokenpo

	def play_match (player1, player2) 
		winner = :draw

		who_wins = { :pedra => :papel, :papel => :tesoura, :tesoura => :pedra }

		if ( who_wins[player1].eql? player2 )
			winner = :player2			
		elsif ( who_wins[player2].eql? player1 )
			winner = :player1
		end
		
		winner
	end

end


