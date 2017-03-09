class ParamsController < ApplicationController

  def name
    @name = params["name"].upcase
    if params["name"].start_with?("A", "a")
      @string = "Hey, your name starts with the first letter of the alphabet!"
    else
      @string = "Hey, your name DOESN'T start with the first letter of the alphabet!"
    end
    render "names.html.erb"
  end

  def number
    x = 36
      if params["number"].to_i == x
        @output = "Yes, You're a winner!  Nice Job!!!"
      elsif params["number"].to_i > x
        @output = "No, Please Guess Lower"
      elsif params["number"].to_i < x
        @output = "No, Please Guess Higher"
      end
      render "number.html.erb"
        
  end

end