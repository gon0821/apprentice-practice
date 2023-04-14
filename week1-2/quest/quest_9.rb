conversion_rates = {
  usd: 1.0,
  jpy: 132.0,
  eur: 0.9,
  cny: 6.85,
}

def convert_currency(amount, source_currency, target_currency, conversion_rates)
  convert_currency = amount * conversion_rates[target_currency] / conversion_rates[source_currency]
  puts convert_currency.to_i
end

convert_currency(132, :jpy, :usd, conversion_rates)
convert_currency(132, :usd, :jpy, conversion_rates)
convert_currency(132, :eur, :jpy, conversion_rates)
convert_currency(685, :cny, :jpy, conversion_rates)
convert_currency(1000, :cny, :eur, conversion_rates)
