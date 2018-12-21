require 'httparty'

# Exercise 1
ottawa_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/?sets=ottawa-wards')

ottawa_wards_json = JSON.parse(ottawa_wards_response.body)

ottawa_wards_json['objects'].each do |ward|
  puts ward["name"]
end


# Exercise 2
elections_response = HTTParty.get('https://represent.opennorth.ca/elections/')

elections_json = JSON.parse(elections_response.body)

elections_json['objects'].each do |election|

  puts "#{election['name']}, date: #{election['election_date']}"
end
