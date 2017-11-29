class Api::V1::HeroesController < ApplicationController

  before_action :set_hero, only: [:show, :abilities]
  # GET /api/v1/heroes
  def index
    @heroes = Hero.page(params[:number].to_i)
    render json: @heroes, status: :ok
  end

  # GET /api/v1/hero/<ID>
  def show
    if @hero
      render json: @hero, status: :ok
    else
      unprocessable_entity('Hero does not exist')
    end
  end

  # GET /api/v1/hero/<ID>/abilities
  def abilities
    if @hero
      render json: @hero.abilities, status: :ok
    else
      unprocessable_entity('Hero does not exist')
    end
  end

  private
  def set_hero
    @hero = Hero.find_by(id: params[:id])
  end
end
