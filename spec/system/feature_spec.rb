require 'rails_helper'

RSpec.describe 'カテゴリー機能', type: :system do
  describe '特徴(カテゴリー)新規登録' do
    def login
      visit new_factory_path
      fill_in 'user[email]', with: 'tokyo@example.com'
      fill_in 'user[password]', with: 'password'
      click_on 'commit'
    end
    context '特徴(カテゴリー)情報を入力した場合' do
      it '特徴(カテゴリー)が登録できること' do
        login
        click_on '工場一覧'
        click_on '特徴(カテゴリー)新規登録'
        fill_in 'feature[feature_name]', with:'エンジン'
        click_on 'commit'
        expect(page).to have_content '特徴が登録されました'
      end
    end
  end
end