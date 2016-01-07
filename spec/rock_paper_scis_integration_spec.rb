require("capybara/rspec")
require("./app")
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('rock_paper_scis path', {:type => :feature}) do
  before :each do
    srand(67809)
  end
  it("return winner if player move is rock and opponent is scissors") do
    visit('/')
    click_button("Rock")
    expect(page).to have_content("Computer")
  end

  it("return winner if player move is rock and opponent is scissors and then returns to the homepage") do
    visit('/')
    click_button("Rock")
    click_link("Return")
    click_button("Rock")
    expect(page).to have_content("Computer")
  end
end
