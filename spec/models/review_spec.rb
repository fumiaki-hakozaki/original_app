require 'rails_helper'

RSpec.describe Review, type: :model do
  describe '特徴モデル機能' do
    context '口コミ欄に入力しない場合' do
      it 'バリデエーションエラーメッセージが表示されること' do
        review = Review.new(content:'')
        expect(review).not_to be_valid
      end
    end
    context '口コミを正しく入力した場合' do
      it 'バリデエーションが通る' do
        user = FactoryBot.create(:user, email: 'new1@example.com') # ここで新しいメールアドレスを持つユーザーを作成
        factory = FactoryBot.create(:factory)
        review = FactoryBot.build(:review, user_id: user.id, factory_id: factory.id) # 新しく作成したユーザーを使用
        expect(review).to be_valid
      end
    end
  end
end
