require "rails_helper"

RSpec.feature "Concert join", type: :feature do
  let(:user) { FactoryBot.create(:user) }
  let!(:concert) { FactoryBot.create(:concert) }

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