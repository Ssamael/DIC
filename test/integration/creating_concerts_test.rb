class CreatingConcertsTest < ActionDispach::IntegrationTest

	test 'creates concerts' do |
		post '/concerts', { concert: 
			{ band: 'Angry Bananas', date: '28.03.2018', place: 'Chupacabra Club', ticket_price: '10 cebulions'}
			}.to_json,
			{ 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

		assert_equal 201, response.status
		assert_equal Mime::JSON, response.content_type

		concert = json(response.body)
		assert_equal concert_url(concert[:id]), response.location
	end

end