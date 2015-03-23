User.create!([{ first_name: 'Fabio', last_name: 'Gubert', email: 'fabiogubert@me.com', password: 'gubert', password_confirmation: 'gubert'}])

Currency.create!([
	{name: "us dollar", iso: "usd", symbol: "$"},
	{name: "euro", iso: "eur", symbol: "€"},
	{name: "pound sterling", iso: "gbp", symbol: "£"},
	{name: "swiss franc", iso: "chf", symbol: "fr"},
	{name: "yen", iso: "jpy", symbol: "¥"},
	{name: "australian dollar", iso: "aud", symbol: "$"},
	{name: "brazilian real", iso: "brl", symbol: "R$"}
	])

CurrencyPair.create!([
	{ fr_currency_id: 1, to_currency_id: 2, ccy_pair_name: "USD x EUR"},
	{ fr_currency_id: 2, to_currency_id: 3, ccy_pair_name: "EUR x GBP"},
	{ fr_currency_id: 2, to_currency_id: 1, ccy_pair_name: "EUR x USD"},
	{ fr_currency_id: 5, to_currency_id: 3, ccy_pair_name: "GBP x BRL"}
	])