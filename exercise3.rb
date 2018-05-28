class Playerbo

  def initialize
    @lives = 5
    @gold_coins = 0
    @health_points = 10
  end

  def level_up
    @lives = @lives + 1
  end

  def collect_treasure
    @gold_coins = @gold_coins + 1
      if @gold_coins % 10 == 0
        level_up
      end
  end

  def do_battle (damage)
    @health_points = @health_points - damage
      if @health_points < 1
        @lives = @lives - 1

          if @lives <= 0
            reset
          end
        @health_points = 10
      end
  end

  def reset
    @lives = 5
    @gold_coins = 0
    @health_points = 10
  end

end
