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

    @new_player.name = new_player["name"]
    @new_player.country = new_player["country"]
    @new_player.rank = new_player["rank"]

    @new_player.save

    render json: Player.all
  end

  def edit
    # params[:new_info].each do |key, value|
    #   Player.update(params[:id], key => value)
    # end

    @player_to_edit = Player.find(params[:id])
    @player_to_edit.update_attributes(update_params)

    render json: Player.find(params[:id])
  end

  def delete
    Player.delete(params[:id])

    render json: Player.all
  end

  def update_params
    params.require(:new_info).permit([:name, :country, :rank])
  end

  def new_player
    params.require(:new_player).permit([:name, :country, :rank])
  end
end
