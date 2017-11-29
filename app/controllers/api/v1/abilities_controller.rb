class Api::V1::AbilitiesController < ApplicationController

  before_action :set_ability, only: [:show]
  # GET /api/v1/abilities
  def index
    @abilities = Ability.page(params[:number].to_i)
    render json: @abilities, status: :ok
  end

  # GET /api/v1/ability/<ID>
  def show
    if @ability
      render json: @ability, status: :ok
    else
      unprocessable_entity('Ability does not exist')
    end
  end

  private
  def set_ability
    @ability = Ability.find_by(id: params[:id])
  end
end
