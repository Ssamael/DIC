class MonetizeConcerts < ActiveRecord::Migration[5.1]
  def change
  	add_monetize :concerts, :ticket_price
  end
end
