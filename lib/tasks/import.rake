namespace :import do
	
	desc 'import countries from csv'
	task countries: :environment do
		CSV.foreach('vendor/countries.csv') do |row|
			p row
			enabled, name, iso3, iso2, capital_name = row
			Country.create!(enabled: enabled, name: name, iso3: iso3, iso2: iso2, capital_name: capital_name)
		end
	end

	desc 'import states from csv'
	task states: :environment do
		CSV.foreach('vendor/states.csv') do |row|
			p row
			country_id, name, iso, code, capital_name = row 
			State.create!(country_id: country_id, name: name, iso: iso, code: code, capital_name: capital_name)
		end
	end

	desc 'import currencies from csv'
	task currencies: :environment do
		CSV.foreach('vendor/currencies.csv') do |row|
			p row
			name, iso, base_unit_one, base_unit_other = row 
			Currency.create!(name: name, iso: iso, base_unit_one: base_unit_one, base_unit_other: base_unit_other)
		end
	end

	desc 'import cities from csv'
	task cities: :environment do
		CSV.foreach('vendor/cities.csv') do |row|
			p row
			state_id, name  = row 
			City.create!(state_id: state_id, name: name)
		end
	end
end