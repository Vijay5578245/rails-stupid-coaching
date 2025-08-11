class PagesController < ApplicationController
  def ask
  end

  def answer
    @ans = params["respond"]

    if @ans == "I am going to work"
      @res = "Great!"
    elsif @ans[-1, 1] == "?"
      @res = "Silly question, get dressed and go to work!"
    else
      @res = "I don't care, get dressed and go to work!"
    end
  end
end
