require 'rails_helper'

RSpec.describe 'ユーザー管理機能', type: :system do
  describe 'ログイン機能' do
    before do
      user = FactoryBot.create(:user)
      user = FactoryBot.create(:secound_user)
      user = FactoryBot.create(:third_user)
    end
    context '正しいパスワードが入力された場合' do
      it 'ログインできること' do
        visit new_user_session_path
        fill_in 'user[email]', with: 'tokyo@example.com'
        fill_in 'user[password]', with: 'password'
        click_on 'commit'
        #binding.pry
        expect(page).to have_content 'nagasaki'
      end
    end

    context '誤ったパスワードが入力された場合' do
      it 'ログインできないこと' do
        visit new_user_session_path
        fill_in 'user[email]', with: 'example@example.com'
        fill_in 'user[password]', with: 'pass'
        click_on 'commit'
        expect(page).not_to have_content 'nagasaki'
        expect(page).to have_content '違います'
      end
    end

    context '管理者権限を持ったユーザーログインした場合' do
      it '管理者画面のリンクが出て管理者画面に行く' do
        visit new_user_session_path
        fill_in 'user[email]', with: 'tokyo@example.com'
        fill_in 'user[password]', with: 'password'
        click_on 'commit'
        click_on '管理者画面'
        expect(page).not_to have_content '一覧'
      end
    end
  end
end