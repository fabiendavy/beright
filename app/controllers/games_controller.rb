class GamesController < ApplicationController
  def create
    @token = []
    6.times do
      @token << rand(0..9)
    end
    @token = @token.join('')
    @game = Game.new(token: @token)
    if @game.save
      redirect_to game_path(@game)
    else
      render '/dashboard'
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  def join
  end

  def redirect
    token = params[:token]
    @game = Game.find_by(token: token)
    if @game
      redirect_to game_path(@game)
    else
      render :join
    end
  end
end
