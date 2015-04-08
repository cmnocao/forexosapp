class CurrencyPairsController < ApplicationController
  before_filter :authorize_admin
  before_action :set_currency_pair, only: [:show, :edit, :update, :destroy]

  def index
    @currency_pairs = CurrencyPair.all
  end

  def show
  end

  def new
    @currency_pair = CurrencyPair.new
  end

  def edit
  end

  def create
    @currency_pair = CurrencyPair.new(currency_pair_params)
    id = @currency_pair
    @currency_pair.ccy_pair_iso = "#{Currency.find_by_id(id.fr_currency_id).iso.upcase}" + " x " + "#{Currency.find_by_id(id.to_currency_id).iso.upcase}"
    @currency_pair.ccy_pair_name = "#{Currency.find_by_id(id.fr_currency_id).name.titleize}" + " x " + "#{Currency.find_by_id(id.to_currency_id).name.titleize}"

    if @currency_pair.save
      redirect_to @currency_pair, notice: 'Currency Pair was successfully created.'
    else
      render :new
    end
  end

  def update
    if @currency_pair.update(currency_pair_params)
      redirect_to @currency_pair, notice: 'Currency Pair was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @currency_pair.destroy
    redirect_to currency_pairs_url, notice: 'Currency Pair was successfully destroyed.'
  end

  def countries_hash
    customer = Customers.all
      customer_hash_array = customer.collect{|country| {:value => customer.country_id , :label => country.firstname}}
  end

  private
    def set_currency_pair
      @currency_pair = CurrencyPair.find(params[:id])
    end

    def currency_pair_params
      params.require(:currency_pair).permit(:fr_currency_id, :to_currency_id)
    end
end
