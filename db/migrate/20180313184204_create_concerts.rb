class CreateConcerts < ActiveRecord::Migration[5.1]
  def change
    create_table :concerts do |t|
      t.string :band
      t.date :date
      t.string :place
      t.string :ticket_price
      t.string :buy_ticket
      t.text :more_info

      t.timestamps
    end
  end
end
