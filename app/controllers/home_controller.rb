class HomeController < ApplicationController
  include JsonFormatter

  def index
    @ledger_data = raw_transactions
  end
end
