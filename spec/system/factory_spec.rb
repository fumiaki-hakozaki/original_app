require 'rails_helper'

RSpec.describe '工場機能テスト', type: :system do
  describe '新規工場登録' do
    def login
      visit new_factory_path
      fill_in 'user[email]', with: 'tokyo@example.com'
      fill_in 'user[password]', with: 'password'
      click_on 'commit'
    end
    context '工場の情報を入力した場合' do
      it '工場が登録できること' do
        login
        click_on '工場一覧'
        click_on '工場新規登録'
        fill_in 'factory_factory_name', with: 'DIC工場'
        fill_in 'factory_address', with: '東京都港区'
        fill_in 'factory_summary', with: 'DIC工場の紹介文'
        click_button '登録する'
        expect(page).to have_content '工場が作成されました！'
      end
    end

    context '工場名を入れないといバリデーションかかる' do
      it 'バリデーションメッセージが表示される' do
        login
        click_on '工場一覧'
        click_on '工場新規登録'
        fill_in 'factory_factory_name', with: ''
        fill_in 'factory_address', with: '東京都'
        fill_in 'factory_summary', with: 'DIC工場は綺麗'
        click_button '登録する'
        expect(page).to have_content '工場名を入力してください'
      end
    end

    context '住所を入れないとバリデーションがかかる' do
      it 'バリデーションメッセージが表示される' do
        login
        click_on '工場一覧'
        click_on '工場新規登録'
        fill_in 'factory_factory_name', with: 'DIC工場'
        fill_in 'factory_address', with: ''
        fill_in 'factory_summary', with: 'DIC工場は綺麗'
        click_button '登録する'
        expect(page).to have_content '住所を入力してください'
      end
    end
  end
end