class BowlingGame
  def initialize
    @score = 0
    @spare_flg
  end

  def record_shot(pins)
    @score = @score + pins

    if @spare_flg
      @score = @score + pins
      @spare_flg = false
    end

    if @score == 10
      @spare_flg = true
    end

  end

  def score
    @score
  end
end
