require 'rails_helper'

RSpec.describe Service, type: :model do
  describe 'サービスモデル機能' do
    context 'サービス名が未入力だとバリデーションがかかる' do
      it 'バリデーションメッセージが表示される' do
        service = Service.new(service_name:'',price:'1000',content:'失敗テスト')
        expect(service).not_to be_valid
      end
    end

    context '金額を入力しないとバリデーションがかかる' do
      it 'バリデーションメッセージが表示される' do
        service = Service.new(service_name:'サービス',price:'',content:'失敗テスト')
        expect(service).not_to be_valid

      end
    end

    context '金額入力欄に数字を入れないとバリデーションがかかる' do
      it 'バリデーションメッセージが表示される' do
        service = Service.new(service_name:'サービス',price:'サービス',content:'失敗テスト')
        expect(service).not_to be_valid
      end
    end
  end
end
