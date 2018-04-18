puts "SEED START"

concert_list = [
["Psychoformalina", "2018-07-12", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["Aviaries", "2018-07-12", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["Past", "2018-07-12", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["Christine Plays Viola", "2018-07-12", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["The Last Days Of Jesus", "2018-07-12", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["The House Usher", "2018-07-12", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["Golden Apes", "2018-07-12", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["Leśne Licho", "2018-07-13", "Bolkow Castle", 0, "PLN", nil, "On castle at Castle Party Festival", 1],
["Vulture Industries", "2018-07-13", "Bolkow Castle", 0, "PLN", nil, "On castle at Castle Party Festival", 1],
["Grausame Töchter", "2018-07-13", "Bolkow Castle", 0, "PLN", nil, "On castle at Castle Party Festival", 1],
["Theatre Of Hate", "2018-07-13", "Bolkow Castle", 0, "PLN", nil, "On castle at Castle Party Festival", 1],
["Agonoize", "2018-07-13", "Bolkow Castle", 0, "PLN", nil, "On castle at Castle Party Festival", 1],
["The Eden House", "2018-07-13", "Bolkow Castle", 0, "PLN", nil, "On castle at Castle Party Festival", 1],
["Apoptygma Berzerk", "2018-07-13", "Bolkow Castle", 0, "PLN", nil, "On castle at Castle Party Festival", 1],
["Above Aurora", "2018-07-13", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["Doomas", "2018-07-13", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["Rosk", "2018-07-13", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["Popiół", "2018-07-13", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["Mentor", "2018-07-13", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["Shining", "2018-07-13", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["In The Woods", "2018-07-13", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["Art Of Illusion", "2018-07-14", "Bolkow Castle", 0, "PLN", nil, "On castle at Castle Party Festival", 1],
["Made In Poland", "2018-07-14", "Bolkow Castle", 0, "PLN", nil, "On castle at Castle Party Festival", 1],
["Tyske Ludder", "2018-07-14", "Bolkow Castle", 0, "PLN", nil, "On castle at Castle Party Festival", 1],
["The Coffinshakers", "2018-07-14", "Bolkow Castle", 0, "PLN", nil, "On castle at Castle Party Festival", 1],
["Gothminister", "2018-07-14", "Bolkow Castle", 0, "PLN", nil, "On castle at Castle Party Festival", 1],
["Faun", "2018-07-14", "Bolkow Castle", 0, "PLN", nil, "On castle at Castle Party Festival", 1],
["Project Pitchfork", "2018-07-14", "Bolkow Castle", 0, "PLN", nil, "On castle at Castle Party Festival", 1],
["Gnoza", "2018-07-14", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["By The Spirits", "2018-07-14", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["Nytt Land", "2018-07-14", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["Arrm", "2018-07-14", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["Licho", "2018-07-14", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["Mortiis", "2018-07-14", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["Death In Rome", "2018-07-14", "Bolkow Castle", 0, "PLN", nil, "Special Midnight Show at Castle Party Festival", 1],
["Traitrs", "2018-07-15", "Bolkow Castle", 0, "PLN", nil, "On castle at Castle Party Festival", 1],
["Mano Juodoji Sesuo", "2018-07-15", "Bolkow Castle", 0, "PLN", nil, "On castle at Castle Party Festival", 1],
["Escape with Romeo", "2018-07-15", "Bolkow Castle", 0, "PLN", nil, "On castle at Castle Party Festival", 1],
["Department", "2018-07-15", "Bolkow Castle", 0, "PLN", nil, "On castle at Castle Party Festival", 1],
["The Beauty of Gemina", "2018-07-15", "Bolkow Castle", 0, "PLN", nil, "On castle at Castle Party Festival", 1],
["Samael", "2018-07-15", "Bolkow Castle", 0, "PLN", nil, "On castle at Castle Party Festival", 1],
["Citizen N.I.", "2018-07-15", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["Human Steel", "2018-07-15", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["Gunmaker", "2018-07-15", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["Monstergod", "2018-07-15", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["Cynical Existence", "2018-07-15", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["Seadrake", "2018-07-15", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1],
["Torul", "2018-07-15", "Bolkow Castle", 0, "PLN", nil, "On small steage at Castle Party Festival", 1]
]

concert_list.each do |band, date, place, ticket_price, currency, buy_ticket, more_info, user_id |
	Concert.create!(band: band, date: date, place: place, ticket_price_cents: ticket_price, currency: currency, buy_ticket: buy_ticket, more_info: more_info, user_id: user_id)
end

puts "SEED END"