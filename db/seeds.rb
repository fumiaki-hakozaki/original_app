# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# サンプル管理ユーザー
#   User.create!([{ name:"レブロン", email:"sample_4@example.com", password: "123456" , admin: true}])

# ゲストユーザー
# @user = User.create!(
#   name: 'ゲスト',
#   email: 'guest@example.com',
#   password: SecureRandom.urlsafe_base64
# )

# ゲスト管理者ユーザー
# @admin_user = User.create!(
#   name: 'ゲスト管理者',
#   email: 'admin@example.com',
#   password: SecureRandom.urlsafe_base64,
#   admin: true
# )

# factories
@factory1 = Factory.create!(
  factory_name: '中島自動車',
  summary: '長崎でもトップクラスの規模を誇る工場です。',
  address: '長崎県長崎市田中町897',
  latitude: 32.7695314,
  longitude: 129.9494893,
  image: 'https://example.com/factory.jpg'
)

@factory2 = Factory.create!(
  factory_name: 'アスク整備工場',
  summary: '地域密着型のアットホームな工場です。',
  address: '長崎県佐世保市江迎町2-4-8',
  latitude: 33.1638164,
  longitude: 129.7339315,
  image: 'https://example.com/factory.jpg'
)

@factory3 = Factory.create!(
  factory_name: '車匠',
  summary: '地域最安値を目指す工場です。',
  address: '長崎県佐世保市上福田町11-1',
  latitude: 33.161227,
  longitude: 129.7524013,
  image: 'https://example.com/factory.jpg'
)

@factory4 = Factory.create!(
  factory_name: 'ノムラ自動車',
  summary: '高品質で安心の自動車修理を提供しています。',
  address: '諫早市諏訪寺町1-1',
  latitude: 32.850726,
  longitude: 130.0428516,
  image: 'https://example.com/factory4.jpg'
)

@factory5 = Factory.create!(
  factory_name: 'グランドアール',
  summary: '自動車修理、車検、板金塗装、事故修理などのサービスを提供しています。',
  address: '佐世保市鹿町町248',
  latitude: 33.1894098,
  longitude: 129.7141441,
  image: 'https://example.com/factory3.jpg'
)

@factory6 = Factory.create!(
  factory_name: '三和自動車',
  summary: '自動車ガラス販売・施工・修理、 カーフイルム、天井内張り張替えなどを行っております。',
  address: '長崎県長崎市為石町3747',
  latitude: 32.6431996,
  longitude: 129.8338712,
  image: 'https://example.com/factory.jpg'
)

@factory7 = Factory.create!(
  factory_name: '岡山自動車商会',
  summary: 'フロントガラスの傷の修理、または断熱ガラス（クールベール）などへの交換の際はお気軽にお問い合わせください。',
  address: '長崎県長崎市目覚町１４－１０',
  latitude: 32.7629434,
  longitude: 129.8660647,
  image: 'https://example.com/factory.jpg'
)

@factory8 = Factory.create!(
  factory_name: 'ベスト１マツオ',
  summary: '長崎県で新車・中古車・車検・板金・自動車保険など車の 事なら何でも気軽にご相談くださいませ。',
  address: '長崎県東彼杵郡川棚町新谷郷132-1',
  latitude: 33.0684769,
  longitude: 129.8275036,
  image: 'https://example.com/factory.jpg'
)

@factory9 = Factory.create!(
  factory_name: '照オート',
  summary: '車検・板金など車の 事なら何でも気軽にご相談くださいませ。タイヤの種類も豊富に揃えています！',
  address: '長崎県長崎市松崎町244-1',
  latitude: 32.8327785,
  longitude: 129.7532698,
  image: 'https://example.com/factory.jpg'
)

@factory10 = Factory.create!(
  factory_name: '信和オート',
  summary: 'タイヤもバッテリーの種類も豊富に揃えています！お気軽にお立ち寄りください。',
  address: '長崎県長崎市鳴見町663-2',
  latitude: 32.8180273,
  longitude: 129.8025826,
  image: 'https://example.com/factory.jpg'
)

@factory11 = Factory.create!(
  factory_name: '辻オート',
  summary: 'お気軽にお立ち寄りください。',
  address: '長崎県長崎市淵町26-18',
  latitude: 32.7590985,
  longitude: 129.8543828,
  image: 'https://example.com/factory.jpg'
)

@factory12 = Factory.create!(
  factory_name: '（有）木下車輌整備',
  summary: 'お気軽にお立ち寄りください。',
  address: '長崎県北松浦郡佐々町中川原免８４−３',
  latitude: 33.2479401,
  longitude: 129.6576569,
  image: 'https://example.com/factory.jpg'
)

@factory13 = Factory.create!(
  factory_name: 'Ｃａｒ Ｓｅｒｖｉｃｅ マユミ',
  summary: 'お気軽にお立ち寄りください。',
  address: '長崎県東彼杵郡川棚町白石郷１８５０',
  latitude: 33.0561504,
  longitude: 129.8441676,
  image: 'https://example.com/factory.jpg'
)

@factory14 = Factory.create!(
  factory_name: '大草自動車整備工場',
  summary: 'お気軽にお立ち寄りください。',
  address: '長崎県諫早市多良見町元釜１−２',
  latitude: 32.8566539,
  longitude: 129.9329885,
  image: 'https://example.com/factory.jpg'
)

@factory15 = Factory.create!(
  factory_name: '山口自動車整備工場',
  summary: 'お気軽にお立ち寄りください。',
  address: '長崎県諫早市高来町東平原６１０−１',
  latitude: 	32.915325,
  longitude: 130.1367894,
  image: 'https://example.com/factory.jpg'
)

# features
Feature.create!(
  feature_name: '点検、車検整備'
)

Feature.create!(
  feature_name: 'オイル交換'
)
Feature.create!(
  feature_name: 'タイヤ交換'
)
Feature.create!(
  feature_name: 'ブレーキ交換'
)
Feature.create!(
  feature_name: 'エンジンチェック'
)
Feature.create!(
  feature_name: 'ホイールアライメント調整'
)
Feature.create!(
  feature_name: 'エアコン修理'
)
Feature.create!(
  feature_name: 'バッテリー交換'
)
Feature.create!(
  feature_name: 'エキゾーストシステム修理'
)
Feature.create!(
  feature_name: 'サスペンション調整'
)

Feature.create!(
  feature_name: '冷却水交換'
)

Feature.create!(
  feature_name: 'エンジンオーバーホール'
)

Feature.create!(
  feature_name: 'フューエルシステム清掃'
)

Feature.create!(
  feature_name: 'ベルト交換'
)

Feature.create!(
  feature_name: 'エアフィルター交換'
)

Feature.create!(
  feature_name: 'ブレーキパッド研磨'
)

Feature.create!(
  feature_name: 'ブレーキオーバーホール'
)

Feature.create!(
  feature_name: 'ヒューズ交換'
)

Feature.create!(
  feature_name: 'ステアリング調整'
)

Feature.create!(
  feature_name: 'ドライブシャフト交換'
)

# factory_features
Factory.all.each do |factory|
  # ランダムな数のフィーチャーを選択
  feature_ids = Feature.pluck(:id).sample(rand(3..5))
  feature_ids.each do |feature_id|
    # 選択されたフィーチャーと工場を紐づけるFactoryFeatureを作成
    FactoryFeature.create!(
      factory_id: factory.id,
      feature_id: feature_id
    )
  end
end

# users
@user1 = User.create!(
  name: '山田太郎',
  email: 'yamada@example.com',
  password: 'password',
  profile: '旧車が大好きです',
  admin: false
)

@user2 = User.create!(
  name: '田中花子',
  email: 'tanaka@example.com',
  password: 'password',
  profile: '車の整備が得意です。',
  admin: false
)

@user3 = User.create!(
  name: '佐藤健太',
  email: 'sato@example.com',
  password: 'password',
  profile: '車が大好きです。',
  admin: false
)

@user4 = User.create!(
  name: '鈴木大介',
  email: 'suzuki@example.com',
  password: 'password',
  profile: 'プロの整備士です。',
  admin: false
)

@user5 = User.create!(
  name: '高橋秀樹',
  email: 'takahashi@example.com',
  password: 'password',
  profile: '自動車修理を10年以上経験しています。',
  admin: false
)

@user6 = User.create!(
  name: '渡辺恵美',
  email: 'watanabe@example.com',
  password: 'password',
  profile: 'カスタムカーを作るのが趣味です。',
  admin: false
)

@user7 = User.create!(
  name: '小林直人',
  email: 'kobayashi@example.com',
  password: 'password',
  profile: 'ドライブが好きです。',
  admin: false
)

@user8 = User.create!(
  name: '中村英樹',
  email: 'nakamura@example.com',
  password: 'password',
  profile: '自動車レースに出場しています。',
  admin: false
)

@user9 = User.create!(
  name: '加藤美奈子',
  email: 'kato@example.com',
  password: 'password',
  profile: '自動車販売の仕事をしています。',
  admin: false
)

@user10 = User.create!(
  name: '木村啓介',
  email: 'kimura@example.com',
  password: 'password',
  profile: '車を自分で修理するのが趣味です。',
  admin: false
)


# favorites
User.all.each do |user|
  factory_ids = Factory.pluck(:id).sample(3)
  factory_ids.each do |factory_id|
    Favorite.create!(
      user_id: user.id,
      factory_id: factory_id
    )
  end
end

# reviews
Review.create!(
  content: 'この工場は、整備士の技術力が高く、信頼できるお店です。',
  image: 'https://example.com/image1.jpg',
  user_id: @user1.id,
  factory_id: @factory1.id

)
Review.create!(
  content: 'この工場は、対応が早くて助かりました。',
  image: 'https://example.com/image2.jpg',
  user_id: @user3.id,
  factory_id: @factory2.id
)
Review.create!(
  content: 'この工場は、雰囲気が良くて居心地がいいです。',
  image: 'https://example.com/image3.jpg',
  user_id: @user2.id,
  factory_id: @factory1.id
)
Review.create!(
  content: 'この工場は、とても親切に対応していただけました。',
  image: 'https://example.com/image4.jpg',
  user_id: @user3.id,
  factory_id: @factory1.id
)

Review.create!(
  content: 'この工場は、技術力が高く安心して任せられます。',
  image: 'https://example.com/image5.jpg',
  user_id: @user4.id,
  factory_id: @factory2.id
)

Review.create!(
content: 'この工場は、作業が丁寧でとても安心できるお店です。',
image: 'https://example.com/image6.jpg',
user_id: @user1.id,
factory_id: @factory3.id
)

Review.create!(
content: 'この工場は、対応が親切で、アフターサポートもしっかりしています。',
image: 'https://example.com/image7.jpg',
user_id: @user3.id,
factory_id: @factory4.id
)

Review.create!(
content: 'この工場は、お店の雰囲気が居心地が良く、作業も早くて満足できました。',
image: 'https://example.com/image8.jpg',
user_id: @user2.id,
factory_id: @factory5.id
)

Review.create!(
content: 'この工場は、オーナーの方が常に気配りしてくださり、とても丁寧な対応をしてくれます。',
image: 'https://example.com/image9.jpg',
user_id: @user4.id,
factory_id: @factory6.id
)

Review.create!(
content: 'この工場は、技術力が高く、何でも相談できるお店です。',
image: 'https://example.com/image10.jpg',
user_id: @user1.id,
factory_id: @factory7.id
)

Review.create!(
content: 'この工場は、とても親切で、作業の進行状況も丁寧に教えてくださいます。',
image: 'https://example.com/image11.jpg',
user_id: @user3.id,
factory_id: @factory8.id
)

Review.create!(
content: 'この工場は、作業も早くて安心できるお店です。',
image: 'https://example.com/image12.jpg',
user_id: @user2.id,
factory_id: @factory9.id
)

Review.create!(
content: 'この工場は、スタッフの方々がとても親切で、安心してお任せできるお店です。',
image: 'https://example.com/image13.jpg',
user_id: @user4.id,
factory_id: @factory10.id
)

Review.create!(
content: 'この工場は、作業の説明が丁寧で、安心して任せられます。',
image: 'https://example.com/image14.jpg',
user_id: @user1.id,
factory_id: @factory11.id
)

Review.create!(
content: 'この工場は、予算内で最善の対応をしてくださり、とても助かりました。',
image: 'https://example.com/image15.jpg',
user_id: @user3.id,
factory_id: @factory12.id
)

Review.create!(
content: 'この工場は、予算内で最善の対応をしてくださり、とても助かりました。',
image: 'https://example.com/image15.jpg',
user_id: @user1.id,
factory_id: @factory13.id
)

Review.create!(
content: 'この工場は、作業の説明が丁寧で、安心して任せられます。',
image: 'https://example.com/image14.jpg',
user_id: @user1.id,
factory_id: @factory14.id
)

Review.create!(
content: 'この工場は、作業の説明が丁寧で、安心して任せられます。',
image: 'https://example.com/image14.jpg',
user_id: @user1.id,
factory_id: @factory15.id
)

#services
Service.create!(
  service_name: 'オイル交換',
  price: 5000,
  content: '車のオイル交換を行います。',
  factory_id: @factory1.id
)

Service.create!(
  service_name: 'タイヤ交換',
  price: 15000,
  content: '車のタイヤ交換を行います。',
  factory_id: @factory1.id
)

Service.create!(
  service_name: '車検',
  price: 10000,
  content: '車の車検を行います。',
  factory_id: @factory2.id
)

Service.create!(
  service_name: 'ブレーキパッド交換',
  price: 12000,
  content: '車のブレーキパッド交換を行います。',
  factory_id: @factory3.id
)

Service.create!(
  service_name: 'エンジンオイル交換',
  price: 8000,
  content: '車のエンジンオイル交換を行います。',
  factory_id: @factory4.id
)

Service.create!(
  service_name: 'エアコンガス補充',
  price: 5000,
  content: '車のエアコンガスを補充します。',
  factory_id: @factory5.id
)

Service.create!(
  service_name: 'バッテリー交換',
  price: 20000,
  content: '車のバッテリーを交換します。',
  factory_id: @factory6.id
)

Service.create!(
  service_name: 'ヘッドライト交換',
  price: 10000,
  content: '車のヘッドライトを交換します。',
  factory_id: @factory7.id
)

Service.create!(
  service_name: 'スパークプラグ交換',
  price: 8000,
  content: '車のスパークプラグを交換します。',
  factory_id: @factory8.id
)

Service.create!(
  service_name: 'サスペンション交換',
  price: 30000,
  content: '車のサスペンションを交換します。',
  factory_id: @factory9.id
)

Service.create!(
  service_name: 'ホイールアライメント調整',
  price: 10000,
  content: '車のホイールアライメントを調整します。',
  factory_id: @factory1.id
)

Service.create!(
  service_name: 'エキゾーストシステム修理',
  price: 20000,
  content: '車のエキゾーストシステムを修理します。',
  factory_id: @factory2.id
)

Service.create!(
  service_name: 'クーラント交換',
  price: 10000,
  content: '車のクーラントを交換します。',
  factory_id: @factory3.id
)

Service.create!(
  service_name: 'タイミングベルト交換',
  price: 30000,
  content: '車のタイミングベルトを交換します。',
  factory_id: @factory4.id
)

Service.create!(
  service_name: 'フューエルフィルター交換',
  price: 5000,
  content: '車のフューエルフィルターを交換します。',
  factory_id: @factory5.id
)

Service.create!(
  service_name: 'エアフィルター交換',
  price: 5000,
  content: '車のエアフィルターを交換します。',
  factory_id: @factory6.id
)

Service.create!(
  service_name: 'ブレーキフルード交換',
  price: 8000,
  content: '車のブレーキフルードを交換します。',
  factory_id: @factory7.id
)

Service.create!(
  service_name: 'ディーラー車検代行',
  price: 20000,
  content: 'ディーラーでの車検を代行します。',
  factory_id: @factory8.id
)

Service.create!(
  service_name: 'ヒーターコア交換',
  price: 15000,
  content: '車のヒーターコアを交換します。',
  factory_id: @factory9.id
)

Service.create!(
  service_name: 'オルタネーター交換',
  price: 40000,
  content: '車のオルタネーターを交換します。',
  factory_id: @factory10.id
)

Service.create!(
  service_name: 'ディーラー車検代行',
  price: 20000,
  content: 'ディーラーでの車検を代行します。',
  factory_id: @factory11.id
)

Service.create!(
  service_name: 'オルタネーター交換',
  price: 40000,
  content: '車のオルタネーターを交換します。',
  factory_id: @factory12.id
)

Service.create!(
  service_name: 'ヒーターコア交換',
  price: 15000,
  content: '車のヒーターコアを交換します。',
  factory_id: @factory9.id
)