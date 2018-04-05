class ChangeTicketPrice < ActiveRecord::Migration[5.1]
  def change
  	change_column :concerts, :ticket_price, :amount, { null: true, default: nil }
  end
end
