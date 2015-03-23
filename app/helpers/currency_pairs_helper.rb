module CurrencyPairsHelper

private

	def ccy_pair_name(c)
		"#{Currency.find_by_id(c.fr_currency_id).iso.upcase}" + " x " + "#{Currency.find_by_id(c.to_currency_id).iso.upcase}"
	end

	def ccy_pair_names
		CurrencyPair.all.each do |c|
			"#{Currency.find_by_id(c.fr_currency_id).iso.upcase}" + " x " + "#{Currency.find_by_id(c.to_currency_id).iso.upcase}"
		end
	end

	def ccy_pair_current_rate(c)
		if c.rates.count == 0
			link_to "Add a rate", new_rate_path
		else
			"#{c.rates.last.rate}"
		end
	end
	
end
