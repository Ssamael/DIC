class CreateConcertUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :concert_users do |t|
    	t.belongs_to :concert, index: true
    	t.belongs_to :user, index: true
   		t.timestamps
    end
  end
end
