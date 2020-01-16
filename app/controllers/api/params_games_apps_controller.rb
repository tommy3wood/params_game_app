class Api::ParamsGamesAppsController < ApplicationController

  def name_game
    @name = params["name"]
    index = 0

    while index < @name.length
      if @name[index].downcase == "s"
        @name[index] = "$"
      end
      index += 1
    end

    if @name[0] == "T"
      @name = @name.downcase
      @name[-1] = @name[-1].upcase
    else
      @name = @name.upcase
    end

    if @name[0] == "A"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    else
      @message = "Hello #{@name}!"
    end

    render 'name_game.json.jb'
  end

  def guess_a_number
    @guess = params["guess"]

    if @guess.to_i == 50
      @message = "YOU NAILED IT!"
    elsif @guess.to_i < 50
      @message = "Guess higher"
    else
      @message = "Guess Lower"
    end

    render 'guess_a_number.json.jb'
  end

end
