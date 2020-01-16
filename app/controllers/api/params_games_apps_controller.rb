class Api::ParamsGamesAppsController < ApplicationController

  def name_game
    @name = params["name"].upcase
    index = 0

    while index < @name.length
      if @name[index].downcase == "s"
        @name[index] = "$"
      end

      if @name[index].downcase == "a"
        @name[index] = "@"
      end
      index += 1
    end

    if @name[0].downcase == "t"
      @name = @name.downcase
      @name[-1] = @name[-1].upcase
    end

    if @name[0] == "A" || "@"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end

    render 'name_game.json.jb'
  end

  def guess_a_number
    @guess = params["guess"].to_i
    hidden_number = 72

    if @guess == hidden_number
      @message = "YOU NAILED IT!"
    elsif @guess < hidden_number
      @message = "Guess higher"
    else
      @message = "Guess Lower"
    end

    render 'guess_a_number.json.jb'
  end
end
