require 'rails_helper'

RSpec.feature "User logs in", type: :feature, js: true do

  before :each do
    @user = User.create!(
      name: 'Kyle',
      email: 'kyle@lowry.com',
      password: 'asdfasdf',
      password_confirmation: 'asdfasdf'
    )
  end

  scenario 'User is directed to home page' do
    visit login_path
    fill_in 'email', with: 'kyle@lowry.com'
    fill_in 'password', with: 'asdfasdf'
    click_on 'Submit'



    expect(page).to have_css '.products-index'
    expect(page.find(".custom-header")).to be
    save_screenshot
  end
end
