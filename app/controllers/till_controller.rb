class TillController < ApplicationController
  before_filter :authorize
  def index
  	@user_transactions = Transaction.find_by_sql(["SELECT * FROM transactions WHERE user_id = ?", current_user.id])
  end
end
