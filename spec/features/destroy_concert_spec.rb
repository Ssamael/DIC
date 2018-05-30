require "rails_helper"

RSpec.feature "Edit concert", type: :feature do
    let!(:user) { FactoryBot.create(:user, admin: true)}    
    let!(:concert) { FactoryBot.create(:concert)}

    context 'User is not log in and try to find Destroy link' do
        scenario 'on homepage' do
            visit "/"
            expect(page).not_to have_text("Destroy")
        end

        scenario 'on concert page' do
            visit concert_path(concert)
            expect(page).not_to have_text("Destroy")
        end
    end
    
  context 'User is log in' do
    before(:each) do
      login_as(user, scope: :user)
    end
    
    context 'Admin try to find destroy link' do
      scenario 'on homepage' do
        visit "/"
        expect(page).to have_text("Destroy")
      end
      scenario "on concert page" do
        visit concert_path(concert)
        expect(page).to have_text("Destroy")
      end
    end

    context 'User is not administrator and try to find Destroy link' do
      let(:user) {FactoryBot.create(:user) }
        scenario 'on homepage' do
            visit "/"
            expect(page).not_to have_text("Destroy")
        end
      scenario "on concert page" do
        visit concert_path(concert)      
        expect(page).not_to have_text("Destroy")
      end
    end
  end
end