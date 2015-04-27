class CitiesController < ApplicationController
  before_filter :authorize_admin
  before_action :set_city, only: [:show, :edit, :update]

  def index
    @cities = City.all
  end

  def show
  end

  def new
    @city = City.new
  end

  def edit
  end

  def create
    @city = City.new(city_params)
    if @city.save
      redirect_to @city, notice: 'City was successfully created.'
    else
      render :new
    end
  end

  def update
    if @city.update(city_params)
      redirect_to @city, notice: 'City was successfully updated.'
    else
      render :edit
    end
  end

  private

    def set_city
      @city = City.find(params[:id])
    end


    def city_params
      params.require(:city).permit(:name, :state_id)
    end
end
