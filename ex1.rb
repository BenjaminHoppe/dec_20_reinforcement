require 'httparty'

# Exercise 1
toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')

toronto_wards_json = JSON.parse(toronto_wards_response.body)

toronto_wards_json.each do |ward|

  puts ward["name"]
end


# Exercise 2
repersentatives_response = HTTParty.get('https://represent.opennorth.ca/repersentatives/')

repersentatives_json = JSON.parse(repersentatives_response.body)

repersentatives['objects'].each do |repersentative|

  puts repersentative["first_name"]["last_name"]
end
