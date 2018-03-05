require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe 'Validations' do
    it 'should have valid password' do
      @user = User.create!(
        name: 'Frank',
        email: 'frankiefrank@gmail.com',
        password: 'abc',
        password_confirmation: 'abc'
      )
      expect(@user.password).to be
    end 

    it 'should have valid password confirmation' do
      @user = User.create!(
        name: 'Frank',
        email: 'frankiefrank@gmail.com',
        password: 'abc',
        password_confirmation: 'abc'
      )
      expect(@user.password_confirmation).to be
    end 

    it 'should have matching password and confirmation' do
      @user = User.create!(
        name: 'Frank',
        email: 'frankiefrank@gmail.com',
        password: 'abc',
        password_confirmation: 'abdc'
      )
      expect(@user.password).to eql(@user.password_confirmation)
    end 

    it 'should have a unique case-insensitive email' do
      @user = User.create!(
        name: 'Frank',
        email: 'frankiefrank@gmail.com',
        password: 'abc',
        password_confirmation: 'abc'
      )
      expect(User.where(email: @user.email).length).to be 1
    end 

    it 'should have a name' do
      @user = User.create!(
        name: 'Frank',
        email: 'frankiefrank@gmail.com',
        password: 'abc',
        password_confirmation: 'abc'
      )
      expect(@user.name).to be
    end 

    it 'should have a password longer than minimum length' do
      @user = User.create!(
        name: 'Frank',
        email: 'frankiefrank@gmail.com',
        password: 'abc',
        password_confirmation: 'abc'
      )
      expect(@user.password.length).to be > 6
    end 

  end

  describe '.authenticate_with_credentials' do
    it 'should return true for correct login info' do
      @user = User.create!(
        name: 'Frank',
        email: 'frankiefrank@gmail.com',
        password: 'abc',
        password_confirmation: 'abc'
      )
      expect(User.authenticate_with_credentials('fraNKiefrank@gmail.com', 'abc')).to be true
    end

    it 'should return false for incorrect info' do
      @user = User.create!(
        name: 'Frank',
        email: 'frankiefrank@gmail.com',
        password: 'abc',
        password_confirmation: 'abc'
      )
      expect(User.authenticate_with_credentials('asdf', 'asdf')).to be false
    end
  end

end
