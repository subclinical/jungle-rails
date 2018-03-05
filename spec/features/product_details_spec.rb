require 'rails_helper'

RSpec.feature "User clicks on a product", type: :feature, js: true do
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

  it "They see details of product that was clicked" do
    # ACT
    visit root_path
    
    # click_on @category.products.first.name
    # a = find('.btn-default', match: :first)
    # p a.inspect
    # a.click
    click_link @category.products.first.name
    # DEBUG / VERIFY
    # puts page.html
    expect(find('.product-detail')).to have_content @category.products.first.name
    expect(page).to have_content 'Description'
    expect(page).to have_content @category.products.first.description
    save_screenshot
  end

end
