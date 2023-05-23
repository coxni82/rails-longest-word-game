class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(10)
  end

  def score
    @guess = params[:guess].strip.upcase
    @letters_hidden = params[:letters]
    @url = "https://wagon-dictionary.herokuapp.com/:word/#{@guess}"
    @guess.split.include?(@letters_hidden.split)
    raise
  end
end
