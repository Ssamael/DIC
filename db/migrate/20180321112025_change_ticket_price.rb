class ChangeTicketPrice < ActiveRecord::Migration[5.1]
  def change
  	remove_column :concerts, :ticket_price
  end
end
