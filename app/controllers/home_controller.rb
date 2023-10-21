class HomeController < ApplicationController
  include JsonFormatter

  def index
    @json_data = raw_transactions
  end
end
