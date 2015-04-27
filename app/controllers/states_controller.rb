class StatesController < ApplicationController
  before_filter :authorize_admin
  before_action :set_state, only: [:show, :edit, :update]

  def index
    @states = State.all
  end

  def show
  end

  def new
    @state = State.new
  end

  def edit
  end

  def create
    @state = State.new(state_params)
    if @state.save
      redirect_to @state, notice: 'State was successfully created.' 
    else
      render :new 
    end
  end

  def update
    if @state.update(state_params)
      redirect_to @state, notice: 'State was successfully updated.' 
    else
      render :edit 
    end
  end

  private

    def set_state
      @state = State.find(params[:id])
    end


    def state_params
      params.require(:state).permit(:name, :country_id)
    end
end
