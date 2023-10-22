module JsonFormatter
  extend ActiveSupport::Concern

  def raw_transactions
    json_data = File.read(Rails.root.join('config/json_data', 'complicated_ledger.json'))
    JSON.parse(json_data)
  end

  def remove_duplicates(transactions)
    transactions.uniq { |transaction| transaction["activity_id"] }
  end

  def order_by_date(transactions)
    transactions.sort_by{ |transaction| Time.parse(transaction["date"]) }.reverse
  end

  def formatted_data(transactions)
    transactions = remove_duplicates(transactions)
    transactions = order_by_date(transactions)
  end

  def ledger_transactions
    formatted_data(raw_transactions)
  end
end
