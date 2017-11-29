class Api::V1::HeroesController < ApplicationController

  # GET /api/v1/heroes
  def index
    @heroes = Hero.page(params[:number].to_i)
    render json: @heroes, status: :ok
  end

  # GET /api/v1/hero/<ID>
  def show
    @hero = Hero.find_by(id: params[:id])
    if @hero
      render json: @hero, status: :ok
    else
      unprocessable_entity('Hero does not exist')
    end
  end
end
