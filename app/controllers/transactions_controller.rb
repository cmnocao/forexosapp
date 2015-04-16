class TransactionsController < ApplicationController
  before_filter :authorize
  before_action :set_transaction, only: [:show, :edit, :update, :destroy]

  def index
    @transactions = Transaction.all
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

  def new
    @customer = Customer.find(params[:customer_id])
    @transaction = @customer.transactions.new
  end

  def edit
    @transaction = Transaction.find(params[:id])
  end

  def create
    @customer = Customer.find(params[:customer_id])
    @transaction = @customer.transactions.new(transaction_params)
    id = @transaction
    @transaction.rate_value = "#{Rate.find_by_id(id.rate_id).rate}"
    @transaction.user_id = current_user.id
    @transaction.fr_ccy_id = "#{CurrencyPair.find_by_id(id.currency_pair_id).fr_currency_id}"
    @transaction.to_ccy_id = "#{CurrencyPair.find_by_id(id.currency_pair_id).to_currency_id}"
    if @transaction.save
      redirect_to customer_path(@customer), notice: 'Transaction was successfully created.'
    else
      render :new
    end
  end

  def update
    if @transaction.update(transaction_params)
      redirect_to transaction_path(@transaction), notice: 'Transaction was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @transaction.destroy
    redirect_to transactions_url, notice: 'Transaction was successfully destroyed.'
  end

  private

    def set_transaction
      @transaction = Transaction.find(params[:id])
    end


    def transaction_params
      params.require(:transaction).permit(:currency_pair_id, :rate_id, :fr_amount, :to_amount, :customer_id)
    end
end
