module HomeHelper
  def format_date(date)
    Time.parse(date).strftime("%B %d, %Y")
  end

  def transaction_direction(type)
    ['INVESTMENT', 'TRANSFER'].include?(type) ? 'to' : 'from'
  end

  def description(transaction)
    if transaction['source']['id'].present?
      "#{transaction['type'].capitalize} #{transaction_direction(transaction['type'])} #{transaction['source']['description']}"
    else
      "#{transaction['type'].capitalize} #{transaction_direction(transaction['type'])} unknown source"
    end
  end
end
