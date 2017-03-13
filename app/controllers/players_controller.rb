class PlayersController < ApplicationController

  def index
    if !params[:id]
      render json: Player.all
    else
      render json: Player.find(params[:id])
    end
  end

  def new
    @new_player = Player.new

    @new_player.name = params["name"]
    @new_player.country = params["country"]
    @new_player.rank = params["rank"]

    @new_player.save

    render json: Player.all
  end

  def edit
    params[:new_info].each do |key, value|
      Player.update(params[:id], key => value)
    end

    render json: Player.find(params[:id])
  end

  def delete
    Player.delete(params[:id])

    render json: Player.all
  end
end
