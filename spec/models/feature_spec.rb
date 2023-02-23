require 'rails_helper'

RSpec.describe Feature, type: :model do
  describe '特徴モデル機能' do
    context '特徴(カテゴリー)名を入れないとバリデーションがかかる' do
      it 'バリデーションメッセージが表示される' do
        feature = Feature.new(feature_name:'')
        expect(feature).not_to be_valid
      end
    end
  end
end
