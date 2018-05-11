class CreateGetInvolveds < ActiveRecord::Migration[5.1]
  def change
    create_table :get_involveds do |t|
    	t.belongs_to :concert, index: true
    	t.belongs_to :user, index: true
   		t.timestamps
    end
  end
end
