module CurrencyPairsHelper

private

	def ccy_pair_current_rate(c)
		if c.rates.count == 0
			link_to "Add a rate", new_rate_path
		else
			"#{c.rates.last.rate}"
		end
	end
	
end
