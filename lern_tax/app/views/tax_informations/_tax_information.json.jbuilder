json.extract! tax_information, :id, :w2_wages, :capital_gains, :unemployment_insurance, :self_employment, :created_at, :updated_at
json.url tax_information_url(tax_information, format: :json)
