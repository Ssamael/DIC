require "rails_helper"

RSpec.feature "Concert join", type: :feature do
  let(:user) { FactoryBot.create(:user) }
  let!(:concert) { FactoryBot.create(:concert) }
  
  context "User is not log in" do
    scenario "User try to find join options" do
      visit concert_path(concert)
      expect(page).to have_text(I18n.t("concert.log2join"))
    end
  end
  
  context "User is log in" do
    before(:each) do
      login_as(user, scope: :user)
    end

    scenario "User join to concert" do
      # user = FactoryBot.create(:user)

      visit concert_path(concert)


      click_link I18n.t("concert.join")
      
      expect(page).to have_text(I18n.t("concert.join_conf"))
    end
  end  
end