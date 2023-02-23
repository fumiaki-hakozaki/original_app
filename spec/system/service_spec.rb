require 'rails_helper'

RSpec.describe 'サービス機能', type: :system do
  describe 'サービス登録' do
    let(:factory) { FactoryBot.create(:factory_2) }
    let(:user) { FactoryBot.create(:third_user)}
    def login
      visit new_factory_path
      fill_in 'user[email]', with: 'tokyo@example.com'
      fill_in 'user[password]', with: 'password'
      click_on 'commit'
    end
    context 'サービス情報を入力した場合' do
      it 'サービスが登録できる' do
        login
        click_on '工場一覧'
        click_on('工場情報確認', match: :first)
        click_on 'サービス一覧'
        click_on 'サービス内容新規登録'
        fill_in 'service[service_name]', with: '温泉'
        fill_in 'service[price]', with: '1000'
        fill_in 'service[content]', with: '大浴場'
        click_on 'commit'
        expect(page).to have_content 'サービスを登録しました'
      end
    end
  end
end