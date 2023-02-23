require 'rails_helper'

RSpec.describe '工場機能テスト', type: :system do
    let!(:feature) { FactoryBot.create(:feature)}
    let!(:feature) { FactoryBot.create(:feature_2)}
    let!(:feature) { FactoryBot.create(:feature_3)}

    let!(:factory) { FactoryBot.create(:factory, feature_ids:[1]) }
    let!(:factory) { FactoryBot.create(:factory_2, feature_ids:[2,3]) }
    let!(:factory) { FactoryBot.create(:factory_3, feature_ids:[3]) }

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

    context '工場検索機能' do
      it 'カテゴリーにチェックし検索すると関連の工場が表示される' do
        login
        click_link('', href: root_path)
        find('#q_features_id_eq_any_3').click
        click_button('search_btn_2')
        expect(page).to have_content 'サービスサービス'
        #binding.pry
      end

      it '検索欄入力すると検索し関連工場が表示される'do
        login
        click_link('', href: root_path)
        fill_in 'q[factory_name_or_address_cont]', with: '新潟'
        click_button('search_btn_1')
        expect(page).to have_content 'サービスサービス'
        #binding.pry
      end
    end
  end
end