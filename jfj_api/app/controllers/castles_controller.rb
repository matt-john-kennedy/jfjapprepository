class CastlesController < ApplicationController
  before_action :set_castle, only: [:show, :update, :destroy]
  def index
    @castles = Castle.all
    if @castles 
      render json: @castles, status: :ok
    else
      render json: {error: "No castles to show"}, status: :not_found
    end
  end

  def create
    @castle = Castle.create(castle_params)
    if @castle.errors.any?
      render json: @castle.errors, status: :unprocessable_entity
    else
      render json: @castle, status: :created
    end
  end
  
  def show
    render json: @castle
  end
  
  def update
    @castle.update(castle_params)
    if @castle.errors.any?
      render json: @castle.errors, status: :unprocessable_entity
    else
      render json: @castle, status: :created
    end
  end

  def destroy
    @castle.delete
    render json: :no_content
  end

  private
  def castle_params
    params.permit(:name, :description, :price, :image)
  end

  def set_castle
    begin
      @castle = Castle.find(params[:id])
    rescue 
      render json: {error: "Castle not found"}, status: :not_found
    end
  end
end
