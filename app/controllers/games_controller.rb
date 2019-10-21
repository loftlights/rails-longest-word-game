class GamesController < ApplicationController
  def new
    @letters = (0...20).map { ('a'..'z').to_a[rand(26)] }.join
  end

  def score
    @answer = params[:answer]
    @letters = params[:letters]
    @score = @answer.size
  end
end
