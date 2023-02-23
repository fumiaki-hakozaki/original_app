require 'rails_helper'
RSpec.describe '口コミ投稿機能', type: :system do
  describe '口コミを投稿すること' do

    def login
      visit new_factory_path
      fill_in 'user[email]', with: 'example@example.com'
      fill_in 'user[password]', with: 'password'
      click_on 'commit'
    end
    context '有効な情報を入力する' do
      it '口コミ投稿されること' do
        login
        click_on '工場一覧'
        click_on('工場情報確認', match: :first)
        click_on '口コミを投稿！'
        fill_in 'review[content]', with:'素晴らしい'
        click_on '投稿'
        expect(page).to have_content '口コミを作成しました！'
      end
    end
  end
end