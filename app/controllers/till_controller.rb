class TillController < ApplicationController
  before_filter :authorize
  def index
  	@user_transactions = Transaction.find_by_sql(["SELECT * FROM transactions WHERE user_id = ? AND created_at >= ?", current_user.id, Time.zone.now.beginning_of_day] )
  end
end