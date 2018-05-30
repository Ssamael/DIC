require "rails_helper"

RSpec.feature "Resign concert", type: :feature do
  let(:user) { FactoryBot.create(:user) }
  let!(:concert) { FactoryBot.create(:concert) }
  
  context "User is not log in" do
    scenario "User try to find resign options" do
      visit concert_path(concert)
      expect(page).to have_text(I18n.t("concert.log2join"))
    end
  end
  
  context "User is log in" do
    before(:each) do
      login_as(user, scope: :user)
      visit concert_path(concert)
      click_link I18n.t("concert.join")
    end

    scenario "User try to resign on concert page" do
      visit concert_path(concert)
      click_link I18n.t("concert.resign")
      page.driver.browser.switch_to.alert.accept
      expect(page).to have_text(I18n.t("concert.join"))
    end

    scenario "User try to resign on user page" do
        visit user_concerts_path(user)
        click_link I18n.t("concert.resign")
        page.driver.browser.switch_to.alert.accept
        expect(page).to have_text(I18n.t("concert.join"))
    end
  end  
end