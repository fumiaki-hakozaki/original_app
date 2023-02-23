require 'rails_helper'

RSpec.describe Review, type: :model do
  describe '特徴モデル機能' do
    context '口コミ欄に入力しない場合' do
      it 'バリデエーションエラーメッセージが表示されること' do
        review = Review.new(content:'')
        expect(review).not_to be_valid
      end
    end
  end
end
