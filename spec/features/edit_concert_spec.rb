require "rails_helper"

RSpec.feature "Edit concert", type: :feature do
    let!(:user) { FactoryBot.create(:user, admin: true)}    
    let!(:concert) { FactoryBot.create(:concert)}

    context 'User is not log in' do
        scenario 'User try to click Edit link' do
            visit concert_path(concert)
            expect(page).not_to have_text("Edit")
        end

        scenario 'User is not log in' do
            visit edit_concert_path(concert)
            expect(page.current_path).to eq(new_user_session_path)
        end
    end
    
  context 'User is log in' do
    before(:each) do
      login_as(user, scope: :user)
    end
    
    context 'User is administrator' do
      scenario 'Admin try to click Edit link' do
        visit concert_path(concert)
        expect(page).to have_text("Edit")
      end
      scenario "Admin try to edit concert" do
        visit edit_concert_path(concert)
        expect(page).to have_button('Update Concert')
        expect(page).not_to have_text("Only admins can create or edit concerts.")
      end


      scenario "Admin try to update invalid concert" do
        visit edit_concert_path(concert)
        fill_in 'concert_band', with: nil
        fill_in 'concert_place', with: 'Anywhere'
        click_button 'Update Concert'
        expect(page).to have_text("prohibited this concert from being saved:")
      end

      scenario "Admin try to edit correct concert" do
        visit edit_concert_path(concert)
        fill_in 'concert_band', with: 'Example band'
        fill_in 'concert_place', with: 'Anywhere'
        fill_in 'concert_date', with: '2020-02-20' 
        click_button 'Update Concert'
        expect(page).to have_text("Example band")
      end
    end

    context 'User is not administrator' do
      let(:user) {FactoryBot.create(:user) }
        scenario 'User try to click Edit link' do
            visit concert_path(concert)
            expect(page).not_to have_text("Edit")
        end
      scenario "Standard user try to edit concert" do
        visit edit_concert_path(concert)      
        expect(page).to have_text("Only admins can create or edit concerts.")
      end
    end
  end
end