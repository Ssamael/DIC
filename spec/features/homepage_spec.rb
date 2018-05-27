require "rails_helper"

RSpec.feature "Homepage", type: :feature do
  scenario "User sees mainpage" do
    visit "/"
    expect(page).to have_text(I18n.t("concerts.list"))
  end

  let!(:concert) { FactoryBot.create(:concert) }

  context 'User is log in' do
    before(:each) do
      login_as(user, scope: :user)
    end
    
    context 'User is administrator' do
      let(:user) { FactoryBot.create(:user, admin: true)}    
      scenario "Admin user visit homepage" do
        visit "/"
        expect(page).to have_text("Destroy")
      end
    end

    context 'User is not administrator' do
      let(:user) {FactoryBot.create(:user) }
      scenario "Standard user visit homepage" do
        expect(page).not_to have_text("Destroy")
      end
    end
  end
end