require 'rails_helper'

RSpec.feature "User clicks on add to cart button", type: :feature, js: true do
      # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "They see add to cart counter increment" do
    # ACT
    visit root_path
    find('.btn-primary', match: :first).click
    # click_on @category.products.first.name
    # click_link @category.products.first.name
    # DEBUG / VERIFY
    # puts page.html
    expect(page.find(".cart")).to have_content '1'
    save_screenshot
  end

end
