require "rails_helper"

RSpec.feature "Homepage", type: :feature do
  scenario "User sees mainpage" do
    visit "/"


    expect(page).to have_text(I18n.t("concerts.list"))
  end
end