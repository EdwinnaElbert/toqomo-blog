require 'rails_helper'
require 'spec_helper'
feature 'User sign in', %q{
  As a user
  I want to be able to sign in
} do

  let!(:user) { create(:user)}

  scenario 'Registered user tries signing in', js: true do
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Sign in'
    expect(current_path).to eq root_path
    expect(page).to have_content('Выйти')
  end

  scenario 'Non-registered user tries signing in', js: true do
    visit new_user_session_path
    fill_in 'Email', with: 'wrong@yandex.ru'
    fill_in 'Password', with: '123456789'
    click_on 'Sign in'

    expect(current_path).to eq new_user_session_path
    expect(page).to have_content('Войти')
  end

end
