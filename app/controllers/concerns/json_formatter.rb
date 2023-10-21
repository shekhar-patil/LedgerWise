module JsonFormatter
  extend ActiveSupport::Concern

  def raw_transactions
    json_data = File.read(Rails.root.join('config/json_data', 'simple_ledger.json'))
    JSON.parse(json_data)
  end
end
