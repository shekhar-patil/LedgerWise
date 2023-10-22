class HomeController < ApplicationController
  include JsonFormatter

  def index
    @ledger_data = ledger_transactions
  end
end
