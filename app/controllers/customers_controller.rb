class CustomersController < ApplicationController
  before_filter :authorize
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  def index
    @customers = Customer.search(params[:search])
    @customers = @customers.paginate(:page => params[:page], :per_page => 15)
  end

  def show
  end

  def new
    @customer = Customer.new
  end

  def edit
  end

  def chart
  end

  def create
    @customer = Customer.new(customer_params)
    id = @customer
    @customer.country_name = Country.find_by_id(id.country_id).name
    if @customer.save
      redirect_to @customer, notice: 'Customer was successfully created.' 
    else
      render :new 
    end
  end

  def update
    if @customer.update(customer_params)
      redirect_to @customer, notice: 'Customer was successfully updated.' 
    else
      render :edit 
    end
  end

  def destroy
    @customer.destroy
    redirect_to customers_url, notice: 'Customer was successfully destroyed.'
  end

  private

    def set_customer
      @customer = Customer.find(params[:id])
    end


    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :sex, :profile_picture, :dob, :country_id, :email, :phone )
    end
end
