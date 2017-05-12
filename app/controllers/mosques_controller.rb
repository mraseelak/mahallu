class MosquesController < ApplicationController
  def index
    @mosques = Mosque.all
    render json: @mosques
  end

  def show
    begin
      @mosque = Mosque.find(params[:id])
    rescue ActiveRecord::RecordNotFound => e
      p e.backtrace
      @mosque = []
    end

    render json: @mosque
  end

  def new
    @mosque = Mosque.new
  end

  def create

  end
end
