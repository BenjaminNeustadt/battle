class Game

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end
end

#in the attack_spec file, when the test goes to sign in, it doesnt use the Game.new class. it uses a fill form methodlogy.