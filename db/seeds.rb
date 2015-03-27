User.create!([{ first_name: 'Fabio', last_name: 'Gubert', email: 'fabiogubert@me.com', password: 'gubert', password_confirmation: 'gubert'}])

CurrencyPair.create!([
	{ fr_currency_id: 1, to_currency_id: 2, ccy_pair_iso: "USD x EUR", ccy_pair_name: "US Dollar x Euro"},
	{ fr_currency_id: 2, to_currency_id: 3, ccy_pair_iso: "EUR x GBP", ccy_pair_name: "Euro x Pound Sterling"},
	{ fr_currency_id: 2, to_currency_id: 1, ccy_pair_iso: "EUR x USD", ccy_pair_name: "Euro x US Dollar"},
	{ fr_currency_id: 5, to_currency_id: 3, ccy_pair_iso: "GBP x BRL", ccy_pair_name: "Pound Sterling x Brazilian Real"}
	])

Rate.create!([
	{	rate: "1.11", currency_pair_id: 1, ccy_pair_iso: "1x1"},
	{	rate: "2.11", currency_pair_id: 2, ccy_pair_iso: "2x2"},
	{	rate: "3.11", currency_pair_id: 3, ccy_pair_iso: "3x3"},
	{	rate: "4.11", currency_pair_id: 4, ccy_pair_iso: "4x4"},
	{	rate: "5.11", currency_pair_id: 1, ccy_pair_iso: "5x5"},
	])