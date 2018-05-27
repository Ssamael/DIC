require "rails_helper"

RSpec.feature "New concert", type: :feature do
    context 'User is not log in' do
        scenario 'User is not log in' do
            visit new_concert_path
            expect(page.current_path).to eq(new_user_session_path)
        end
      end
    
  context 'User is log in' do
    before(:each) do
      login_as(user, scope: :user)
    end
    
    context 'User is administrator' do
      let!(:user) { FactoryBot.create(:user, admin: true)}    
      scenario "Admin try to create concert" do
        visit new_concert_path
        expect(page).to have_button('Create')
        expect(page).not_to have_text("Only admins can create or edit concerts.")
      end


      scenario "Admin try to create invalid concert" do
        visit new_concert_path
        fill_in 'concert_band', with: 'Cycki'
        fill_in 'concert_place', with: 'Chuj wie gdzie' 
        click_button 'Create Concert'
        expect(page).to have_text("prohibited this concert from being saved:")
      end

      scenario "Admin try to create correct concert" do
        visit new_concert_path
        fill_in 'concert_band', with: 'Example band'
        fill_in 'concert_place', with: 'Anywhere'
        fill_in 'concert_date', with: '2020-02-20' 
        click_button 'Create Concert'
        expect(page).to have_text("Example band")
      end
    end

    context 'User is not administrator' do
      let(:user) {FactoryBot.create(:user) }
      scenario "Standard user try to create concert" do
        visit new_concert_path        
        expect(page).to have_text("Only admins can create or edit concerts.")
      end
    end
  end
end