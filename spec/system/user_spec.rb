require 'rails_helper'

RSpec.describe 'ユーザー管理機能', type: :system do
  let(:factory) { FactoryBot.create(:factory) }
  let(:factory) { FactoryBot.create(:factory_2) }
  let(:factory) { FactoryBot.create(:factory_3) }
  describe 'ログイン機能' do
    context 'ユーザー新規登録' do
      it '新規登録するとマイページに遷移する' do
        visit new_user_registration_path
        fill_in 'user[name]', with: 'テスト'
        fill_in 'user[email]', with: 'test@example.com'
        fill_in 'user[password]', with: '123456'
        fill_in 'user[password_confirmation]', with: '123456'
        click_on 'commit'
        expect(page).to have_content 'アカウント登録が完了しました。'
      end
    end
    
    context '正しいパスワードが入力された場合' do
      it 'ログインできること' do
        visit new_user_session_path
        fill_in 'user[email]', with: 'tokyo@example.com'
        fill_in 'user[password]', with: 'password'
        click_on 'commit'
        #binding.pry
        expect(page).not_to have_content 'nagasaki'
        expect(page).to have_content 'tokyo'
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
        expect(page).to have_content 'サイト管理'
      end
    end

    context 'ログアウトテスト' do
      it 'ユーザーがログアウトする' do
        visit new_user_session_path
        fill_in 'user[email]', with: 'example@example.com'
        fill_in 'user[password]', with: 'password'
        click_on 'commit'
        click_on 'ログアウト'
        expect(page).to have_content 'ログアウトしました。'
      end
    end

    context '一般ユーザーがログインした場合' do
      it '工場をお気に入りに登録できる' do
        visit new_user_session_path
        fill_in 'user[email]', with: 'example@example.com'
        fill_in 'user[password]', with: 'password'
        click_on 'commit'
        click_on '工場一覧'
        click_on('工場情報確認', match: :first)
        click_on 'お気に入りする'
        expect(page).to have_content 'お気に入り登録しました'
        expect(page).not_to have_content 'お気に入りする'
      end
    end
  end
end