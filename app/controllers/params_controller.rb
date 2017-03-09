class ParamsController < ApplicationController

  def name
    @name = params["name"].upcase
    if @name.start_with?("A", "a")
      @message = "Hey, your name starts with the first letter of the alphabet!"
    else
      @message = "Hey, your name DOESN'T start with the first letter of the alphabet!"
    end
    render "names.html.erb"
  end

  def number
    @number_guessed = params["guess"].to_i
    x = 36
      if @number_guessed == x
        @output = "Yes, You're a winner!  Nice Job!!!"
      elsif @number_guessed > x
        @output = "No, Please Guess Lower"
      elsif @number_guessed < x
        @output = "No, Please Guess Higher"
      end
      render "number.html.erb"
        
  end

end