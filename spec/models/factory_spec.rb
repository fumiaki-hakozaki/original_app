require 'rails_helper'

RSpec.describe Factory, type: :model do
  describe 'ファクトリーモデル機能' do
    context '工場名を入れないといバリデーションかかる' do
      it 'バリデーションメッセージが表示される' do
        factory = Factory.new(factory_name:'',summary:'卒業課題',address:'失敗テスト',)
        expect(factory).not_to be_valid
      end
    end

    context '住所を入れないとバリデーションがかかる' do
      it 'バリデーションメッセージが表示される' do
        factory = Factory.new(factory_name:'DICオートサービス',summary:'卒業課題',address:'',)
        expect(factory).not_to be_valid
      end
    end

    context '工場情報が正しく入力される' do
      it 'バリデーションが通る' do
        factory = Factory.new(factory_name:'DICオートサービス',summary:'卒業課題',address:'青森県',)
        expect(factory).to be_valid
      end
    end
  end
end
