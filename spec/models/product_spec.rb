require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    it 'should pass if all props are given' do
      @category = Category.create!(name: 'Games')
      @product = Product.create!(
        name: 'Name',
        price: 13.99,
        quantity: '25',
        category: @category
      )
      expect(@product.name).to be
      expect(@product.price).to be
      expect(@product.quantity).to be
      expect(@product.category).to be
    end

    it 'should have a name' do
      @category = Category.create(name: 'Games')
      @product = Product.create(
        name: nil,
        price: 13.99,
        quantity: 25,
        category: @category
      )
      expect(@product.name).to be
    end

    it 'should have a price' do
      @category = Category.create(name: 'Games')
      @product = Product.create(
        name: 'Name',
        price: nil,
        quantity: 25,
        category: @category
      )
      expect(@product.price).to be
    end 

    it 'should have quantity' do
      @category = Category.create(name: 'Games')
      @product = Product.create(
        name: 'Name',
        price: 13.99,
        quantity: nil,
        category: @category
      )
      expect(@product.quantity).to be
    end 

    it 'should belong to a category' do
      @category = Category.create(name: 'Games')
      @product = Product.create(
        name: 'Name',
        price: 13.99,
        quantity: 25,
        category: nil
      )
      expect(@product.category).to be
    end 

  end
end
