User.create!([
	{ first_name: 'Fabio', last_name: 'Gubert', email: 'fabiogubert@me.com', password: 'gubert', password_confirmation: 'gubert', phone: "07731377782", admin: true, username: "fgubert"},
	{ first_name: 'Suelen', last_name: 'Gubert', email: 'cashier@me.com', password: 'gubert', password_confirmation: 'gubert', phone: "07503566885", admin: false, username: "cashier"}
	])

CurrencyPair.create!([
	{ fr_currency_id: 1, to_currency_id: 2, ccy_pair_iso: "USD x EUR", ccy_pair_name: "US Dollar x Euro"},
	{ fr_currency_id: 2, to_currency_id: 3, ccy_pair_iso: "EUR x GBP", ccy_pair_name: "Euro x Pound Sterling"},
	{ fr_currency_id: 2, to_currency_id: 1, ccy_pair_iso: "EUR x USD", ccy_pair_name: "Euro x US Dollar"},
	{ fr_currency_id: 3, to_currency_id: 7, ccy_pair_iso: "GBP x BRL", ccy_pair_name: "Pound Sterling x Brazilian Real"}
	])

Rate.create!([
	{	rate: 0.83, currency_pair_id: 1},
	{	rate: 0.58, currency_pair_id: 2},
	{	rate: 1.02, currency_pair_id: 3},
	{	rate: 4.56, currency_pair_id: 4},
	])

Transaction.create!([
	{ currency_pair_id: 1, rate_id: 1, fr_amount: 100.0, to_amount: 83.00, customer_id: 1, rate_value: 0.83},
	{ currency_pair_id: 2, rate_id: 2, fr_amount: 100.0, to_amount: 58.00, customer_id: 1, rate_value: 0.58},
	{ currency_pair_id: 2, rate_id: 2, fr_amount: 100.0, to_amount: 58.00, customer_id: 2, rate_value: 0.58},
	{ currency_pair_id: 3, rate_id: 3, fr_amount: 100.0, to_amount: 102.00, customer_id: 2, rate_value: 1.02},
	{ currency_pair_id: 4, rate_id: 4, fr_amount: 100.0, to_amount: 456.00, customer_id: 3, rate_value: 4.56},
	])