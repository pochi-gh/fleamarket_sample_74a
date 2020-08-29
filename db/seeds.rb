# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
lady = Category.create(name: "ladies", ancestry: nil)
  ladies_tops = lady.children.create({name: "トップス"})
    ladies_tops.children.create([
                            {name: "Tシャツ/カットソー(半袖/袖なし)"},
                            {name: "Tシャツ/カットソー(七分/長袖)"},
                            {name: "シャツ/ブラウス(半袖なし)"},
                            {name: "シャツ/ブラウス(七分/長袖)"},
                            {name: "ポロシャツ"},
                            {name: "キャミソール"},
                            {name: "タンクトップ"},
                            {name: "フォルターネック"},
                            {name: "ニット/セーター"},
                            {name: "チュニック"},
                            {name: "カーディガン/ボレロ"},
                            {name: "アンサンブル"},
                            {name: "ベスト/ジレ"}
                            ])
  ladies_jacket = lady.children.create({name: "ジャケット/アウター"})
    ladies_jacket.children.create([
                            {name: "テーラードジャケット"},
                            {name: "ノーカラージャケット"},
                            {name: "Gジャン/デニムジャケット"},
                            {name: "レザージャケット"},
                            {name: "ダウンジャケット"},
                            {name: "ライダースジャケト"},
                            {name: "ミリタリージャケット"},
                            {name: "ダウンベスト"},
                            {name: "ジャンバー/ブルゾン"},
                            {name: "ポンチョ"},
                            {name: "ロングコート"},
                            {name: "トレンチコート"},
                            {name: "ダッフルコート"},
                            {name: "ピーコート"}
                          ])
  ladies_pants = lady.children.create({name: "パンツ"})
    ladies_pants.children.create([
                            {name: "デニム/ジーンズ"},
                            {name: "ショートパンツ"},
                            {name: "カジュアルパンツ"},
                            {name: "ハーフパンツ"},
                            {name: "チノパンツ"},
                            {name: "ワークパンツ/カーゴパンツ"},
                            {name: "クロップドパンツ"},
                            {name: "サロペット/オーバーオール"},
                            {name: "オールインワン"},
                            {name: "サルエルパンツ"},
                            {name: "ガチョウパンツ"},
                            {name: "その他"}
                          ])
  ladies_skirts = lady.children.create({name: "スカート"})
    ladies_skirts.children.create([
                            {name: "ミニスカート"},
                            {name: "ひざ丈スカート"},
                            {name: "ロングスカート"},
                            {name: "キュロット"},
                            {name: "その他"}
                           ])
  ladies_onepiece = lady.children.create({name: "ワンピース"})
    ladies_onepiece.children.create([
                            {name: "ミニワンピース"},
                            {name: "ひざ丈ワンピース"},
                            {name: "ロングワンピース"},
                            {name: "その他"}
                           ])

  ladies_shose = lady.children.create({name: "靴"})
      ladies_shose.children.create([
                            {name: "ハイヒール/パンプス"}, 
                            {name: "ブーツ"},
                            {name: "サンダル"}, 
                            {name: "スニーカー"},
                            {name: "ミュール"},     
                            {name: "モカシン"},     
                            {name: "ローファー/革靴"},      
                            {name: "フラットシューズ/バレエシューズ"},     
                            {name: "長靴/レインシューズ"},      
                            {name: "その他"}
                            ])

  ladies_roomwears = lady.children.create({name: "ルームウェア/パジャマ"})
    ladies_roomwears.children.create([
                            {name: "パジャマ"},
                            {name: "ルームウェア"}
                            ])
  ladies_legwears = lady.children.create({name: "レッグウェア"})
    ladies_legwears.children.create([
                            {name: "ソックス"},
                            {name: "スパッツ/レンギンス"},
                            {name: "ストッキング/タイツ"},
                            {name: "レッグウォーマー"},
                            {name: "その他"}
                            ])
  ladies_hats = lady.children.create({name: "帽子"})
    ladies_hats.children.create([
                            {name: "ニットキャップ/ビーニー"},
                            {name: "ハット"},
                            {name: "ハンチング/ベレー帽"},
                            {name: "キャップ"},
                            {name: "麦わら帽子"},
                            {name: "その他"}
                            ])
  ladies_bag = lady.children.create({name: "バッグ"})
    ladies_bag.children.create([
                            {name: "ハンドバッグ"},
                            {name: "トートバッグ"},
                            {name: "エコバッグ"},
                            {name: "リュック/バックパック"},
                            {name: "ボストンバッグ"},
                            {name: "スポーツバッグ"},
                            {name: "ショルダーバッグ"},
                            {name: "クランチバッグ"},
                            {name: "ポーチ/バニティ"},
                            {name: "ボディバッグ/ウェストバッグ"},
                            {name: "マザーズバッグ"},
                            {name: "メッセンジャーバッグ"},
                            {name: "ビジネスバッグ"},
                            {name: "旅行用バッグ/キャリーバッグ"}
                             ])
  ladies_accessory = lady.children.create({name: "アクセサリー"})
    ladies_accessory.children.create([
                          {name: "ネックレッス"},
                          {name: "ブレスレット"},
                          {name: "バングル/リストバンド"},
                          {name: "リング"},
                          {name: "ピアス(片耳用)"},
                          {name: "ピアス(両耳用)"},
                          {name: "イヤリング"},
                          {name: "アンクレット"},
                          {name: "ブローチ/コサージュ"},
                          {name: "チャーム"},
                          {name: "その他"}
                          ])
  ladies_hairaccessory = lady.children.create({name: "ヘアーアクセサリー"})
    ladies_hairaccessory.children.create([
                          {name: "ヘアゴム/シュシュ"},
                          {name: "ヘアバンド/カチューシャ"},
                          {name: "ヘアピン"},
                          {name: "その他"}
                          ])
  ladies_smallaccessory = lady.children.create({name: "小物"})
    ladies_smallaccessory.children.create([
                          {name: "長財布"},
                          {name: "折り財布"},
                          {name: "コインケース/小銭入れ"},
                          {name: "名刺入れ/定期入れ"},
                          {name: "キーケース"},
                          {name: "キーフォルダー"},
                          {name: "手袋/アームカバー"},
                          {name: "ハンカチ"},
                          {name: "ベルト"},
                          {name: "マフラー/ショール"},
                          {name: "ストール/スヌード"},
                          {name: "バンダナ/スカーフ"},
                          {name: "ネックウォーマー"},
                          {name: "サスペンダー"}
                          ])
  ladies_watch = lady.children.create({name: "時計"})
    ladies_watch.children.create([
                        {name: "腕時計(アナログ)"},
                        {name: "腕時計(デジタル)"},
                        {name: "ラバーベルト"},
                        {name: "レザーベルト"},
                        {name: "金属ベルト"},
                        {name: "その他"}
                        ])


mens = Category.create(name: "mens", ancestry: nil)
  mens_tops = mens.children.create({name: "トップス"})
    mens_tops.children.create([
                          {name: "Tシャツ/カットソー(半袖/袖なし)"},
                          {name: "Tシャツ/カットソー(七分/長袖)"},
                          {name: "シャツ"},
                          {name: "ポロシャツ"},
                          {name: "タンクトップ"},
                          {name: "ニット/セーター"},
                          {name: "パーカー"},
                          {name: "カーディガン"},
                          {name: "スウェット"},
                          {name: "ジャージ"},
                          {name: "ベスト"},
                          {name: "その他"}
                          ])
  mens_jacket = mens.children.create({name: "ジャケット/アウター"})
    mens_jacket.children.create([
                          {name: "テーラードジャケット"},
                          {name: "ノーカラージャケット"},
                          {name: "Gジャン/デニムジャケット"},
                          {name: "レザージャケット"},
                          {name: "ダウンジャケット"},
                          {name: "ライダースジャケト"},
                          {name: "ミリタリージャケット"},
                          {name: "ナイロンジャケット"},
                          {name: "フライトジャケット"},
                          {name: "ダッフルコート"},
                          {name: "ピーコート"},
                          {name: "ステンカラーコート"},
                          {name: "トレンチコート"},
                          {name: "モッズコート"}
                        ])
  mens_pants = mens.children.create({name: "パンツ"})
    mens_pants.children.create([
                          {name: "デニム/ジーンズ"},
                          {name: "ワークパンツ/カーゴパンツ"},
                          {name: "スラックス"},
                          {name: "チノパンツ"},
                          {name: "ショートパンツ"},
                          {name: "ペインターパンツ"},
                          {name: "サルエルパンツ"},
                          {name: "オーバーオール"},
                          {name: "その他"}
                        ])
  mens_shose = mens.children.create({name: "靴"})
  mens_shose.children.create([
                        {name: "スニーカー"},
                        {name: "サンダル"},     
                        {name: "ブーツ"},     
                        {name: "モカシン"},      
                        {name: "ドレス/ビジネス"},     
                        {name: "長靴/レインシューズ"},   
                        {name: "デッキシューズ"},
                        {name: "その他"}
                        ])
  mens_bag = mens.children.create({name: "バッグ"})
    mens_bag.children.create([
                          {name: "ショルダーバッグ"},
                          {name: "トートバッグ"},
                          {name: "ハンドバッグ"},
                          {name: "ボストンバッグ"},
                          {name: "リュック/バックパック"},
                          {name: "ウエストバッグ"},
                          {name: "ボディバッグ"},
                          {name: "ドラムバッグ"}, 
                          {name: "ビジネスバッグ"},
                          {name: "トラベルバッグ"},
                          {name: "メッセンジャーバッグ"},
                          {name: "エコバッグ"},
                          {name: "その他"}
                          ])    
  mens_bag = mens.children.create({name: "スーツ"})
   mens_bag.children.create([
                         {name: "スーツジャケット"},
                         {name: "スーツベスト"},
                         {name: "スラックス"},
                         {name: "セットアップ"},
                         {name: "その他"}
                         ])
  mens_hats = mens.children.create({name: "帽子"})
    mens_hats.children.create([
                         {name: "キャップ"},
                         {name: "ハット"},
                         {name: "ニットキャップ/ビーニー"},
                         {name: "ハンチング/ベレー帽"}, 
                         {name: "キャスケット"},
                         {name: "サンバイザー"},
                         {name: "その他"}
                         ])
  mens_accessory = mens.children.create({name: "アクセサリー"})
    mens_accessory.children.create([
                        {name: "ネックレッス"},
                        {name: "ブレスレット"},
                        {name: "バングル/リストバンド"},
                        {name: "リング"},
                        {name: "ピアス(片耳用)"},
                        {name: "ピアス(両耳用)"},
                        {name: "イヤリング"},
                        {name: "アンクレット"},
                        {name: "その他"}
                        ])
  mens_smallaccessory = mens.children.create({name: "小物"})
    mens_smallaccessory.children.create([
                        {name: "長財布"},
                        {name: "折り財布"},
                        {name: "コインケース/小銭入れ"},
                        {name: "名刺入れ/定期入れ"},
                        {name: "キーケース"},
                        {name: "キーフォルダー"},
                        {name: "ネクタイ"},
                        {name: "手袋"},
                        {name: "ハンカチ"},
                        {name: "ベルト"},
                        {name: "マフラー"},
                        {name: "ストール"},
                        {name: "バンダナ"}
                        ])
  mens_watch = mens.children.create({name: "時計"})
    mens_watch.children.create([
                        {name: "腕時計(アナログ)"},
                        {name: "腕時計(デジタル)"},
                        {name: "ラバーベルト"},
                        {name: "レザーベルト"},
                        {name: "金属ベルト"},
                        {name: "その他"}
                        ])
  mens_watch = mens.children.create({name: "水着"})
    mens_watch.children.create([
                        {name: "一般水着"},
                        {name: "スポーツ用"},
                        {name: "アクセサリー"},
                        {name: "その他"}
                        ])
  mens_legwears = mens.children.create({name: "レッグウェア"})
    mens_legwears.children.create([
                        {name: "ソックス"},
                        {name: "レンギンス/スパッツ"},
                        {name: "レッグウォーマー"},
                        {name: "その他"}
                        ])
  mens_underwears = mens.children.create({name: "アンダーウェアー"})
    mens_underwears.children.create([
                        {name: "トランクス"},
                        {name: "ボクサーパンツ"},
                        {name: "その他"}
                        ])
  mens_aonther = mens.children.create({name: "その他"})
    mens_underwears.children.create([
                        {name: "その他"},
                ])                       

babykids = Category.create(name: "babykids", ancestry: nil)
  babykids_tops = babykids.children.create({name: "ベビー服(女の子用)〜95cm"})
    babykids_tops.children.create([
                          {name: "トップス"},
                          {name: "アウター"},
                          {name: "パンツ"},
                          {name: "スカート"},
                          {name: "ワンピース"},
                          {name: "ベビードレス"},
                          {name: "おくるみ"},
                          {name: "下着/肌着"},
                          {name: "パジャマ"},
                          {name: "ロンパース"},
                          {name: "その他"}
                          ])
  babykids_tops = babykids.children.create({name: "ベビー服(男の子用)〜95cm"})
    babykids_tops.children.create([
                          {name: "トップス"},
                          {name: "アウター"},
                          {name: "パンツ"},
                          {name: "おくるみ"},
                          {name: "下着/肌着"},
                          {name: "パジャマ"},
                          {name: "ロンパース"},
                          {name: "その他"}
                          ])
  babykids_tops = babykids.children.create({name: "ベビー服(女の子用)〜95cm"})
    babykids_tops.children.create([
                        {name: "トップス"},
                        {name: "アウター"},
                        {name: "パンツ"},
                        {name: "スカート"},
                        {name: "ワンピース"},
                        {name: "ベビードレス"},
                        {name: "おくるみ"},
                        {name: "下着/肌着"},
                        {name: "パジャマ"},
                        {name: "ロンパース"},
                        {name: "その他"}
                        ])
                        
  babykids_tops = babykids.children.create({name: "ベビー服(男女兼用)〜95cm"})
    babykids_tops.children.create([
                        {name: "トップス"},
                        {name: "アウター"},
                        {name: "パンツ"},
                        {name: "おくるみ"},
                        {name: "下着/肌着"},
                        {name: "パジャマ"},
                        {name: "ロンパース"},
                        {name: "その他"}
                        ])
  babykids_tops = babykids.children.create({name: "キッズ服(女の子用)〜100cm"})
    babykids_tops.children.create([
                        {name: "コート"},
                        {name: "ジャケット/上着"},
                        {name: "トップス(Tシャツ/カットソー"},
                        {name: "トップス(トレーナー)"},
                        {name: "トップス(チュニック)"},
                        {name: "トップス(タンクトップ)"},
                        {name: "トップス(その他)"},
                        {name: "スカート"},
                        {name: "パンツ"},
                        {name: "ワンピース"},
                        {name: "セットアップ"},
                        {name: "パジャマ"},
                        {name: "フォーマル/ドレス"},
                        {name: "その他"}
                        ])
  babykids_tops = babykids.children.create({name: "キッズ服(男の子用)〜100cm"})
    babykids_tops.children.create([
                 {name: "コート"},
                 {name: "ジャケット/上着"},
                        {name: "トップス(Tシャツ/カットソー"},
                        {name: "トップス(トレーナー)"},
                        {name: "トップス(その他)"},
                        {name: "パンツ"},
                        {name: "セットアップ"},
                        {name: "パジャマ"},
                        {name: "フォーマル/ドレス"},
                        {name: "和服"},
                        {name: "浴衣"},
                        {name: "甚平"},
                        {name: "水着"},
                        {name: "その他"}
                       ])
  babykids_tops = babykids.children.create({name: "キッズ服(男女兼用)〜100cm"})
    babykids_tops.children.create([
                 {name: "コート"},
                 {name: "ジャケット/上着"},
                        {name: "トップス(Tシャツ/カットソー"},
                        {name: "トップス(トレーナー)"},
                        {name: "トップス(その他)"},
                        {name: "ボトムス"},
                        {name: "パジャマ"},
                        {name: "その他"}
                        ])
  babykids_tops = babykids.children.create({name: "キッズ靴"})
    babykids_tops.children.create([
                        {name: "スニーカー"},
                        {name: "サンダル"},
                        {name: "ブーツ"},
                        {name: "長靴"},
                        {name: "その他"}
                        ])
  babykids_legwear = babykids.children.create({name: "子ども用ファッション小物"})
    babykids_legwear.children.create([
                        {name: "靴下/スパッツ"},
                        {name: "帽子"},
                        {name: "エプロン"},
                        {name: "サスペンダー"},
                        {name: "タイツ"},
                        {name: "ハンカチ"},
                        {name: "バンダナ"},
                        {name: "ベルト"},
                        {name: "マフラー"},
                        {name: "傘"},
                        {name: "手袋"},
                        {name: "スタイ"},
                        {name: "バッグ"},
                        {name: "その他"}
                        ])
  babykids_bathroom = babykids.children.create({name: "おむつ/トイレ/バス"})
    babykids_bathroom.children.create([
                        {name: "おむつ用品"},
                        {name: "おまる/補助便座"},
                        {name: "トレーニングパンツ"},
                        {name: "ベビーバス"},
                        {name: "お風呂用品"},
                        {name: "その他"}
                        ])
  babykids_outing = babykids.children.create({name: "外出/移動用品"})
    babykids_outing.children.create([
                      {name: "ベビーカー"},
                      {name: "抱っこひも/スリング"},
                      {name: "チャイルドシート"},
                      {name: "その他"}
                      ])
  babykids_meal = babykids.children.create({name: "授乳/食事"})
    babykids_meal.children.create([
                      {name: "ミルク"},
                      {name: "ベビーフード"},
                      {name: "ベビー用食器"},
                      {name: "その他"}
                      ])
  babykids_bed = babykids.children.create({name: "ベビー家具/寝具/室内用品"})
    babykids_bed.children.create([
                      {name: "ベッド"},
                      {name: "布団/毛布"},
                      {name: "イス"},
                      {name: "たんす"},
                      {name: "その他"}
                      ])
  babykids_toy = babykids.children.create({name: "おもちゃ"})
    babykids_toy.children.create([
                      {name: "おふろのおもちゃ"},
                      {name: "がらがら"},
                      {name: "オルゴール"},
                      {name: "ベビージム"},
                      {name: "手押し車/カタカタ"},
                      {name: "知育玩具"},
                      {name: "その他"}
                      ])  
  babykids_ememento = babykids.children.create({name: "行事/記念品"})
    babykids_ememento.children.create([
                      {name: "お宮入り用品"},
                      {name: "お食い始め用品"},
                      {name: "アルバム"},
                      {name: "ベビージム"},
                      {name: "手形/足形"},
                      {name: "その他"}
                      ])


interior = Category.create(name: "interior", ancestry: nil)
  interior_kitchin = interior.children.create({name: "キッチン/食器"})
    interior_kitchin.children.create([
                      {name: "食器"},
                      {name: "調理器具"},
                      {name: "収納/キッチン雑貨"},
                      {name: "弁当用品"},
                      {name: "カトラリー(スプーン等)"},
                      {name: "テーブル用品"},
                      {name: "容器"},
                      {name: "エプロン"},
                      {name: "アルコールグッズ"},
                      {name: "洗浄機"},
                      {name: "その他"}
                      ])
  interior_bed = interior.children.create({name: "ベッド/マットレス"})
    interior_bed.children.create([
                      {name: "セミシングルベッド"},
                      {name: "シングルベッド"},
                      {name: "ダブルベッド"},
                      {name: "ワイルドダブルベッド"},
                      {name: "クイーンベッド"},
                      {name: "キングベッド"},
                      {name: "キングベッド"},
                      {name: "脚付きマットレスベッド"},
                      {name: "マットレス"},
                      {name: "すのこベッド"},
                      {name: "ロフトベッド/システムベッド"},
                      {name: "簡易ベッド/折りたたみベッド"},
                      {name: "収納付き"},
                      {name: "その他"}
                      ])
  interior_couch = interior.children.create({name: "ソファ/ソファベッド"})
    interior_couch.children.create([
                      {name: "ソファセット"},
                      {name: "シングルソファ"},
                      {name: "ラブソファ"},
                      {name: "トリプルソファ"},
                      {name: "オットマン"},
                      {name: "コーナーソファ"},
                      {name: "ビーズソファ/クッションソファ"},
                      {name: "ローソファ/フロアソファ"},
                      {name: "ソファベッド"},
                      {name: "応接セット"},
                      {name: "ソファカバー"},
                      {name: "リクライニングソファ"},
                      {name: "その他"}
                      ])
  interior_chair = interior.children.create({name: "椅子/チェア"})
    interior_chair.children.create([
                      {name: "一般"},
                      {name: "スツール"},
                      {name: "ダイニングチェア"},
                      {name: "ハイバックチェア"},
                      {name: "ロッキングチェア"},
                      {name: "座椅子"},
                      {name: "折りたたみイス"},
                      {name: "デスクチェア"},
                      {name: "その他"}
                      ])
  interior_desk = interior.children.create({name: "机/テーブル"})
    interior_desk.children.create([
                      {name: "こたつ"},
                      {name: "カウンターテーブル"},
                      {name: "サイドテーブル"},
                      {name: "ダイニングテーブル"},
                      {name: "座卓/ちゃぶ台"},
                      {name: "アウトドア用"},
                      {name: "パソコン用"},
                      {name: "事務机/学習机"},
                      {name: "その他"}
                      ])
  interior_closet = interior.children.create({name: "収納家具"})
    interior_closet.children.create([
                      {name: "リビング収納"},
                      {name: "キッチン収納"},
                      {name: "玄関/屋外収納"},
                      {name: "バス/トイレ収納"},
                      {name: "本収納"},
                      {name: "本/CD/DVD収納"},
                      {name: "洋服タンス/押し入れ収納"},
                      {name: "電話台/ファックス台"},
                      {name: "ドッレサー/鏡台"},
                      {name: "棚/ラック"},
                      {name: "ケース/ボックス"},
                      {name: "その他"}
                      ])
  interior_carpet = interior.children.create({name: "ラグ/カーペット"})
    interior_carpet.children.create([
                      {name: "ラグ"},
                      {name: "カーペット"},
                      {name: "ホットカーペット"},
                      {name: "玄関/キッチンマット"},
                      {name: "トイレ/バスマット"},
                      {name: "その他"}
                      ])
  interior_curtain = interior.children.create({name: "カーテン/ブラインド"})
    interior_curtain.children.create([
                      {name: "カーテン"},
                      {name: "ブラインド"},
                      {name: "ロールスクリーン"},
                      {name: "のれん"},
                      {name: "その他"}
                    ])
  interior_lighting = interior.children.create({name: "ライト/照明"})
    interior_lighting.children.create([
                      {name: "蛍光/電球"},
                      {name: "天井照明"},
                      {name: "フロアスタンド"},
                      {name: "その他"}
                    ])
  interior_bedding = interior.children.create({name: "寝具"})
    interior_bedding.children.create([
                      {name: "布団/毛布"},
                      {name: "枕"},
                      {name: "シーツ/カバー"},
                      {name: "その他"}
                    ])
  interior_design = interior.children.create({name: "インテリア小物"})
    interior_design.children.create([
                      {name: "ゴミ箱"},
                      {name: "ウェルカムボード"},
                      {name: "オルゴール"},
                      {name: "クッション"},
                      {name: "クッションカバー"},
                      {name: "スリッパラック"},
                      {name: "ティシュボックス"},
                      {name: "バスケット/かご"},
                      {name: "フォトフレーム"},
                      {name: "マガジンラック"},
                      {name: "モビール"},
                      {name: "花瓶"},
                      {name: "灰皿"},
                      {name: "傘立て"}
                      ])
  interior_annualevent = interior.children.create({name: "インテリア小物"})
    interior_annualevent.children.create([
                      {name: "正月"},
                      {name: "成人式"},
                      {name: "バレンタインデー"},
                      {name: "ひな祭り"},
                      {name: "子どもの日"},
                      {name: "母の日"},
                      {name: "父の日"},
                      {name: "サマーギフト/お中元"},
                      {name: "夏/夏休み"},
                      {name: "ハロウィン"},
                      {name: "敬老の日"},
                      {name: "七五三"},
                      {name: "お歳暮"},
                      {name: "クリスマス"}
                      ])
  interior_another = interior.children.create({name: "その他"})
    interior_annualevent.children.create([
                      {name: "その他"}
                      ])



book = Category.create(name: "book", ancestry: nil)
  book_book = book.children.create({name: "本"})
    book_book.children.create([
                      {name: "文学/小説"},
                      {name: "人文/社会"},
                      {name: "ノンフィクション/教養"},
                      {name: "地図/旅行ガイド"},
                      {name: "ビジネス/経済"},
                      {name: "健康/医学"},
                      {name: "コンピュータ/IT"},
                      {name: "趣味/スポーツ/実用"},
                      {name: "住まい/暮らし/子育て"},
                      {name: "アート/エンタメ"},
                      {name: "洋書"},
                      {name: "絵本"},
                      {name: "参考書"},
                      {name: "その他"}
                      ])

  book_comic = book.children.create({name: "漫画"})
    book_comic.children.create([
                      {name: "全巻セット"},
                      {name: "少年漫画"},
                      {name: "少女漫画"},
                      {name: "青年漫画"},
                      {name: "女性漫画"},
                      {name: "同人誌"},
                      {name: "その他"}
                      ])
  book_magazine = book.children.create({name: "雑誌"})
    book_magazine.children.create([
                      {name: "アート/エンタメ/ホビー"},
                      {name: "ファション"},
                      {name: "ニュース/総合"},
                      {name: "趣味/スポーツ"},
                      {name: "その他"}
                      ])
  book_cd = book.children.create({name: "CD"})
    book_cd.children.create([
                      {name: "邦楽"},
                      {name: "洋楽"},
                      {name: "アニメ"},
                      {name: "クラシック"},
                      {name: "K-POP/アジア"},
                      {name: "キッズ/ファミリー"},
                      {name: "その他"}
                      ])
  book_bluray = book.children.create({name: "DVD/ブルーレイ"})
    book_bluray.children.create([
                      {name: "外国映画"},
                      {name: "日本映画"},
                      {name: "アニメ"},
                      {name: "TVドラマ"},
                      {name: "ミュージック"},
                      {name: "お笑い/バラエティ"},
                      {name: "スポーツ/フィットネス"},
                      {name: "キッズ/ファミリー"},
                      {name: "その他"}
                      ])
  book_record = book.children.create({name: "レコード"})
    book_record.children.create([
                      {name: "邦楽"},
                      {name: "洋楽"},
                      {name: "その他"}
                      ])
  book_game = book.children.create({name: "テレビゲーム"})
    book_game.children.create([
                      {name: "家庭用ゲーム本体"},
                      {name: "家庭用ゲームソフト"},
                      {name: "携帯用ゲーム本体"},
                      {name: "PCゲーム"},
                      {name: "その他"}
                      ])



toy = Category.create(name: "toy", ancestry: nil)
  toy_toy = toy.children.create({name: "おもちゃ"})
    toy_toy.children.create([
                      {name: "キャラクターグッズ"},
                      {name: "ぬいぐるみ"},
                      {name: "小物/アクセサリー"},
                      {name: "模型/プラモデル"},
                      {name: "ミニカー"},
                      {name: "トイラジコン"},
                      {name: "プラモデル"},
                      {name: "ホビーラジコン"},
                      {name: "鉄道模型"},
                      {name: "その他"}
                      ])
  toy_talentgoods = toy.children.create({name: "タレントグッズ"})
    toy_talentgoods.children.create([
                      {name: "アイドル"},
                      {name: "ミューシャン"},
                      {name: "タレント/お笑い芸人"},
                      {name: "スポーツ選手"},
                      {name: "その他"}
                      ])
  toy_animegoods = toy.children.create({name: "コミック/アニメグッズ"})
    toy_animegoods.children.create([
                      {name: "ストラップ"},
                      {name: "キーホルダー"},
                      {name: "バッジ"},
                      {name: "カード"},
                      {name: "クリアファイル"},
                      {name: "ポスター"},
                      {name: "タオル"},
                      {name: "その他"}
                      ])
  toy_card = toy.children.create({name: "トレーディングカード"})
    toy_card.children.create([
                      {name: "遊戯王"},
                      {name: "マジック: ザ・ギャザリング"},
                      {name: "ポケモンカードゲーム"},
                      {name: "デュェウェルマスターズ"},
                      {name: "バトルスピリッツ"},
                      {name: "プリパラ"},
                      {name: "アイカツ"},
                      {name: "カードファイト!!ヴァンガード"},
                      {name: "野球オーナーズリーグ"},
                      {name: "ベースボールヒーローズ"},
                      {name: "ドラゴンボール"},
                      {name: "スリーブ"},
                      {name: "その他"}
                      ])
toy_figure = toy.children.create({name: "フィギュア"})
  toy_figure.children.create([
                    {name: "コミックアニメ"},
                    {name: "特撮"},
                    {name: "ゲームキャラクター"},
                    {name: "SF/ファンタジー/ホラー"},
                    {name: "アニコメ"},
                    {name: "スポーツ"},
                    {name: "ミリタリー"},
                    {name: "その他"}
                    ])
  toy_musicalinstrument = toy.children.create({name: "楽器/機材"})
    toy_musicalinstrument.children.create([
                      {name: "エレキギター"},
                      {name: "アコースティックギター"},
                      {name: "ベース"},
                      {name: "エフェクター"},
                      {name: "アンプ"},
                      {name: "弦楽器"},
                      {name: "管楽器"},
                      {name: "鍵盤楽器"},
                      {name: "打楽器"},
                      {name: "和楽器"},
                      {name: "楽譜/スコア"},
                      {name: "レコーディング/PA機器"},
                      {name: "DJ機器"},
                      {name: "DTM/DAW"}
                      ])
  toy_collection = toy.children.create({name: "コレクション"})
    toy_collection.children.create([
                      {name: "武具"},
                      {name: "使用済み切手/官製はがき"},
                      {name: "旧貨幣/金貨/銀貨/記念硬貨"},
                      {name: "印刷物"},
                      {name: "ノベルティグッズ"},
                      {name: "その他"}
                      ])
  toy_military = toy.children.create({name: "ミリタリー"})
    toy_military.children.create([
                      {name: "トイガン"},
                      {name: "個人装備"},
                      {name: "その他"}
                      ])
  toy_artwork = toy.children.create({name: "美術品"})
    toy_artwork.children.create([
                      {name: "陶芸"},
                      {name: "ガラス"},
                      {name: "漆芸"},
                      {name: "金属工芸"},
                      {name: "絵画/タペストリ"},
                      {name: "版画"},
                      {name: "彫刻/オブジェクト"},
                      {name: "鍵盤楽器"},
                      {name: "書"},
                      {name: "写真"},
                      {name: "その他"}
                      ])
  toy_artsupplies = toy.children.create({name: "アート用品"})
    toy_artsupplies.children.create([
                      {name: "画材"},
                      {name: "額縁"},
                      {name: "その他"}
                      ])                                                          
  toy_another = toy.children.create({name: ""})
    toy_another.children.create([
                    {name: "トランプ/ウノ"},
                    {name: "カルタ/百人一首"},
                    {name: "ダーツ"},
                    {name: "ビリヤード"},
                    {name: "麻雀"},
                    {name: "パズル/ジグソーパズル"},
                    {name: "囲碁/将棋"},
                    {name: "オセロ/将棋"},
                    {name: "人生ゲーム"},
                    {name: "野球/サッカーゲーム"},
                    {name: "スポーツ"},
                    {name: "三輪車/乗り物"},
                    {name: "ヨーヨー"},
                    {name: "模型制作用品"}
                    ])      
                    
                    
beauty = Category.create(name: "beauty", ancestry: nil)
  beauty_basemakeup = beauty.children.create({name: "ベースメイク"})
    beauty_basemakeup.children.create([
                      {name: "ファンデーション"},
                      {name: "化粧下地"},
                      {name: "コントロールカラー"},
                      {name: "BBクリーム"},
                      {name: "CCクリーム"},
                      {name: "コンシーラー"},
                      {name: "フェイスパウダー"},
                      {name: "トライアルセット/サンプル"},
                      {name: "その他"}
                      ])
  beauty_makeup = beauty.children.create({name: "メイクアップ"})
    beauty_makeup.children.create([
                      {name: "ファンデーション"},
                      {name: "化粧下地"},
                      {name: "コントロールカラー"},
                      {name: "BBクリーム"},
                      {name: "CCクリーム"},
                      {name: "コンシーラー"},
                      {name: "フェイスパウダー"},
                      {name: "トライアルセット/サンプル"},
                      {name: "その他"}
                      ])
  beauty_nailscare = beauty.children.create({name: "ネイルケア"})
    beauty_nailscare.children.create([
                      {name: "ネイルケア"},
                      {name: "カラージェル"},
                      {name: "ネイルベースコート/トップコート"},
                      {name: "ネールアート用品"},
                      {name: "ネイルパーツ"},
                      {name: "ネイルチップ/付け爪"},
                      {name: "手入れ用具"},
                      {name: "除光液"},
                      {name: "その他"}
                      ])
  beauty_perfume = beauty.children.create({name: "香水"})
    beauty_perfume.children.create([
                      {name: "香水(女性用)"},
                      {name: "香水(男性用)"},
                      {name: "ユニセックス"},
                      {name: "ボディミスト"},
                      {name: "その他"}
                      ])
  beauty_skincare = beauty.children.create({name: "スキンケア"})
    beauty_skincare.children.create([
                      {name: "化粧水/ローション"},
                      {name: "乳液/ミルク"},
                      {name: "フェイスクリーム"},
                      {name: "洗顔料"},
                      {name: "クレンジング/メイク落とし"},
                      {name: "パック/フェイスマスク"},
                      {name: "ジェル/ゲル"},
                      {name: "ブースター/導入液"},
                      {name: "アイケア"},
                      {name: "リップケア"},
                      {name: "トライアルセット/サンプル"},
                      {name: "洗顔グッズ"},
                      {name: "その他"}
                      ])                      
  beauty_haircare = beauty.children.create({name: "ヘアケア"})
    beauty_haircare.children.create([
                      {name: "シャンプー"},
                      {name: "トリートメント"},
                      {name: "コンディショナー"},
                      {name: "リンス"},
                      {name: "スタイリング剤"},
                      {name: "カラーリング剤"},
                      {name: "ブラシ"},
                      {name: "その他"}
                      ])
  beauty_bodycare = beauty.children.create({name: "ボディケア"})
    beauty_bodycare.children.create([
                      {name: "オイル/クリーム"},
                      {name: "ハンドクリーム"},
                      {name: "ローション"},
                      {name: "日焼け止め/サンオイル"},
                      {name: "ボディソープ"},
                      {name: "入浴剤"},
                      {name: "制汗/デオドラント"},
                      {name: "フットケア"},
                      {name: "その他"}
                      ])
  beauty_oralcare = beauty.children.create({name: "オーラルケア"})
    beauty_oralcare.children.create([
                      {name: "口臭防止/エチケット用品"},
                      {name: "歯ブラシ"},
                      {name: "その他"}
                      ])
  beauty_relaxionat = beauty.children.create({name: "リラクゼーション"})
    beauty_relaxionat.children.create([
                      {name: "エッセンシャルオイル"},
                      {name: "芳香器"},
                      {name: "お香/香炉"},
                      {name: "キャンドル"},
                      {name: "リラクゼーショングッズ"},
                      {name: "その他"}
                      ])
  beauty_diet = beauty.children.create({name: "ダイエット"})
    beauty_diet.children.create([
                      {name: "ダイエット食品"},
                      {name: "エクスサイズ用品"},
                      {name: "体重計"},
                      {name: "体脂肪計"},
                      {name: "その他"}
                      ])
  beauty_another = beauty.children.create({name: "その他"})
    beauty_another.children.create([
                      {name: "健康用品"},
                      {name: "看護/介護"},
                      {name: "救急/衛生用品"},
                      {name: "その他"}
                      ])
      
 homeappliances = Category.create(name: "phone", ancestry: nil)
  homeappliances_phone = homeappliances.children.create({name: "スマートフォン/携帯電話"})
    homeappliances_phone.children.create([
                        {name: "スマートフォン本体"},
                        {name: "バッテリー/充電器"},
                        {name: "携帯電話本体"},
                        {name: "PHP本体"},
                        {name: "その他"}
                        ])
  homeappliances_phoneaccessory = homeappliances.children.create({name: "スマホアクセサリー"})
    homeappliances_phoneaccessory.children.create([
                        {name: "Android用ケース"},
                        {name: "iPhone用ケース"},
                        {name: "カバー"},
                        {name: "イヤリングジャック"},
                        {name: "ストラップ"},
                        {name: "フィルム"},
                        {name: "自撮り棒"},
                        {name: "その他"}
                        ])
  homeappliances_pctablet = homeappliances.children.create({name: "PCタブレット"})
    homeappliances_pctablet.children.create([
                        {name: "タブレット"},
                        {name: "ノートPC"},
                        {name: "デスクトップ型PC"},
                        {name: "ディスプレイ"},
                        {name: "電子ブックリーダー"},
                        {name: "PC周辺機器"},
                        {name: "PCパーツ"},
                        {name: "その他"}
                        ])
  homeappliances_camera = homeappliances.children.create({name: "カメラ"})
    homeappliances_camera.children.create([
                        {name: "デジタルカメラ"},
                        {name: "ビデオカメラ"},
                        {name: "レンズ(単焦点)"},
                        {name: "レンズ(ズーム)"},
                        {name: "フィルムカメラ"},
                        {name: "防犯カメラ"},
                        {name: "その他"}
                        ])
  homeappliances_tv = homeappliances.children.create({name: "テレビ/映像機器"})
    homeappliances_tv.children.create([
                        {name: "テレビ"},
                        {name: "プロジェクター"},
                        {name: "ブルーレイレコーダー"},
                        {name: "ブルーレイプレイヤー"},
                        {name: "DVDプレイヤー"},
                        {name: "映像用ケーブル"},
                        {name: "その他"}
                        ])
  homeappliances_audio = homeappliances.children.create({name: "オーディオ機器"})
    homeappliances_audio.children.create([
                        {name: "ポータブルプレイヤー"},
                        {name: "イヤフォン"},
                        {name: "ヘッドフォン"},
                        {name: "アンプ"},
                        {name: "スピーカー"},
                        {name: "ケーブル/シールド"},
                        {name: "ラジオ"},
                        {name: "その他"}
                        ])
  homeappliances_airconditioning = homeappliances.children.create({name: "冷暖房/空調"})
    homeappliances_airconditioning.children.create([
                        {name: "エアコン"},
                        {name: "空調清浄器"},
                        {name: "加湿器"},
                        {name: "扇風機"},
                        {name: "ファンヒーター"},
                        {name:  "電気ヒーター"},
                        {name: "オールヒーター"},
                        {name: "ストーブ"}, 
                        {name: "ホットカーペット"},
                        {name: "こたつ"},
                        {name: "電気毛布"},
                        {name: "その他"}
                        ])
  homeappliances_homeholdappliances = homeappliances.children.create({name: "生活家電"})
    homeappliances_homeholdappliances.children.create([
                        {name: "冷蔵庫"},
                        {name: "洗濯機"},
                        {name: "炊飯器"},
                        {name: "電子レンジ/オーブン"},
                        {name: "調理機器"},
                        {name:  "アイロン"},
                        {name: "掃除機"},
                        {name: "エスプレッソマシーン"},                    
                        {name: "コーヒーメーカー"},
                        {name: "衣類乾燥"},
                        {name: "その他"}
                        ])
            
  homeappliances_another = homeappliances.children.create({name: "その他"})
    homeappliances_another.children.create([
                        {name: "その他"}
                      ])


sport = Category.create(name: "golf", ancestry: nil)
  sport_golf = sport.children.create({name: "ゴルフ"})
    sport_golf.children.create([
                          {name: "クラブ"},
                          {name: "ウェア(男性用)"},
                          {name: "ウェア(女性用)"},
                          {name: "バッグ"},
                          {name: "シューズ(男性用)"},
                          {name: "シューズ(女性用)"},
                          {name: "アクセサリー"},
                          {name: "その他"}
                          ])
  sport_fising = sport.children.create({name: "フィッシング"})
    sport_fising.children.create([
                          {name: "ロッド"},
                          {name: "リール"},
                          {name: "ルアー用品"},
                          {name: "ウエア"},
                          {name: "釣り糸/ライン"},
                          {name: "その他"}
                         ])
  sport_bicycle = sport.children.create({name: "自転車"})
    sport_bicycle.children.create([
                          {name: "自転車本体"},
                          {name: "ウエア"},
                          {name: "パーツ"},
                          {name: "アクセサリー"},
                          {name: "バッグ"},
                          {name: "工具/メンテナンス"},
                          {name: "その他"}
                          ])
  sport_exsize = sport.children.create({name: "トレーニング/エクスサイズ"})
    sport_exsize.children.create([
                          {name: "ランニング"},
                          {name: "ウォーキング"},
                          {name: "ヨガ"},
                          {name: "トレーニング用品"},
                          {name: "その他"}
                          ])
  sport_baseball = sport.children.create({name: "野球"})
    sport_baseball.children.create([
                          {name: "ウエア"},
                          {name: "シューズ"},
                          {name: "グローブ"},
                          {name: "バッド"},
                          {name: "アクセサリー"},
                          {name: "防具"},
                          {name: "練習器具"},
                          {name: "記念グッズ"},
                          {name: "応援グッズ"},
                          {name: "その他"}
                          ])
  sport_football = sport.children.create({name: "サッカー/フットボール"})
    sport_football.children.create([
                          {name: "ウエア"},
                          {name: "シューズ"},
                          {name: "ボール"},
                          {name: "アクセサリー"},
                          {name: "記念グッズ"},
                          {name: "応援グッズ"},
                          {name: "その他"}
                          ])
  sport_tennis = sport.children.create({name: "テニス"})
    sport_tennis.children.create([
                          {name: "ラケット(硬式)"},
                          {name: "ラケット(軟式)"},
                          {name: "ウエア"},
                          {name: "シューズ"},
                          {name: "ボール"},
                          {name: "アクセサリー"},
                          {name: "記念グッズ"},
                          {name: "応援グッズ"},
                          {name: "その他"}
                          ])
  sport_snowboard = sport.children.create({name: "スノーボード"})
    sport_snowboard.children.create([
                          {name: "ボード"},
                          {name: "バインディング"},
                          {name: "ブーツ(男性用)"},
                          {name: "ブーツ(女性用)"},
                          {name: "ブーツ(子ども用)"},
                          {name: "ウエア/装備(男性用)"},
                          {name: "ウエア/装備(女性用)"},
                          {name: "ウエア/装備(子ども用)"},
                          {name: "アクセサリー"},
                          {name: "バッグ"},
                          {name: "その他"}
                          ])
  sport_skiing = sport.children.create({name: "スキー"})
    sport_skiing.children.create([
                          {name: "板"},
                          {name: "ブーツ(男性用)"},
                          {name: "ブーツ(女性用)"},
                          {name: "ブーツ(子ども用)"},
                          {name: "ビインディング"},
                          {name: "ウエア(男性用)"},
                          {name: "ウエア(女性用)"},
                          {name: "ウエア(子ども用)"},
                          {name: "ストック"},
                          {name: "その他"}
                          ])
  sport_anothersport = sport.children.create({name: "その他のスポーツ"})
    sport_anothersport.children.create([
                          {name: "ダンス/バレエ"},
                          {name: "サーフィン"},
                          {name: "バスケットボール"},
                          {name: "バトミントン"},
                          {name: "バレーボール"},
                          {name: "スケートボード"},
                          {name: "陸上競技"},
                          {name: "ラグビー"},
                          {name: "アメリカンフットボール"},
                          {name: "ボクシング"},
                          {name: "ボーリング"},
                          {name: "その他"}
                          ])
  sport_outdoor = sport.children.create({name: "アウトドア"})
    sport_outdoor.children.create([
                          {name: "テント/ターブ"},
                          {name: "ライト/ランタン"},
                          {name: "寝袋/寝具"},
                          {name: "テーブル/チェア"},
                          {name: "ストーブ/コンロ"},
                          {name: "調理器具"},
                          {name: "食器"},
                          {name: "登山用品"},
                          {name: "その他"}
                          ])
  sport_another = sport.children.create({name: "その他"})
    sport_another.children.create([
                          {name: "旅行用品"},
                          {name: "その他"}
                          ])
                                                        
                      
handmade = Category.create(name: "accessory", ancestry: nil)
  handmade_accessory = handmade.children.create({name: "アクセサリー(女性用)"})
    handmade_accessory.children.create([
                          {name: "ピアス"},
                          {name: "イヤリング"},
                          {name: "ネックレッス"},
                          {name: "ブレスッレド"},
                          {name: "リング"},
                          {name: "チャーム"},
                          {name: "ヘアゴム"},
                          {name: "アンクレット"},
                          {name: "その他"}
                          ])
  handmade_fashion = handmade.children.create({name: "ファッション/小物"})
    handmade_fashion.children.create([
                          {name: "バッグ(女性用)"},
                          {name: "バッグ(男性用)"},
                          {name: "財布(女性用)"},
                          {name: "財布(男性用)"},
                          {name: "ファッション雑貨"},
                          {name: "その他"}
                          ])
  handmade_fashion = handmade.children.create({name: "アクセサリー/時計"})
    handmade_fashion.children.create([
                          {name: "アクセサリー(男性用)"},
                          {name: "時計(女性用)"},
                          {name: "時計(男性用)"},
                          {name: "その他"}
                          ])
  handmade_dailynecessities = handmade.children.create({name: "日用品/インテリア"})
    handmade_dailynecessities.children.create([
                          {name: "キッチン用品"},
                          {name: "家具"},
                          {name: "アート/写真"},
                          {name: "アロマ/キャンドル"},
                          {name: "フラワー/ガーデン"},
                          {name: "その他"}
                          ])
  handmade_hobby = handmade.children.create({name: "趣味/おもちゃ"})
    handmade_hobby.children.create([
                          {name: "クラフト/布財布"},
                          {name: "おもちゃ/人形"},
                          {name: "その他"}
                          ])
  handmade_kids= handmade.children.create({name: "キッズ/ベビー"})
    handmade_kids.children.create([
                          {name: "ファッション雑貨"},
                          {name: "スタイ/よだれかけ"},
                          {name: "外出用品"},
                          {name: "ネームタグ"},
                          {name: "その他"}
                          ])
  handmade_material = handmade.children.create({name: "素材/材料"})
    handmade_material.children.create([
                          {name: "各種パーツ"},
                          {name: "生地/糸"},
                          {name: "型紙/パターン"},
                          {name: "その他"}
                          ])
  handmade_cerecondarycreateion = handmade.children.create({name: "二次創作物"})
    handmade_cerecondarycreateion.children.create([
                          {name: "ingress"},
                          {name: "クリエーターズ宇宙兄弟"}
                          ])
  handmade_another = handmade.children.create({name: "その他"})
    handmade_another.children.create([
                          {name: "その他"}
                          ])
                               
                          
ticket = Category.create(name: "accessory", ancestry: nil)
  ticket_music = ticket.children.create({name: "音楽"})
    ticket_music.children.create([
                          {name: "男性アイドル"},
                          {name: "女性アイドル"},
                          {name: "韓流"},
                          {name: "国内アーティスト"},
                          {name: "海外アーティスト"},
                          {name: "音楽フェス"},
                          {name: "声優/アニメ"},
                          {name: "その他"}
                          ])
  ticket_sport = ticket.children.create({name: "スポーツ"})
    ticket_sport.children.create([
                          {name: "サッカー"},
                          {name: "野球"},
                          {name: "格闘技/プロレス"},
                          {name: "格闘技/武道"},
                          {name: "バレーボール"},
                          {name: "バスケットボール"},
                          {name: "モータースポーツ"},
                          {name: "ウィンタースポーツ"},
                          {name: "その他"}
                          ])
  ticket_entertaiment = ticket.children.create({name: "演劇/芸能"})
    ticket_entertaiment.children.create([
                          {name: "ミュージカル"},
                          {name: "演劇"},
                          {name: "伝統芸能"},
                          {name: "落語"},
                          {name: "お笑い"},
                          {name: "オペラ"},
                          {name: "サーカス"},
                          {name: "バレエ"},
                          {name: "その他"}
                          ])
  ticket_event = ticket.children.create({name: "イベント"})
    ticket_event.children.create([
                          {name: "声優/アニメ"},
                          {name: "キッズ/ファミリー"},
                          {name: "トークショー/講演会"},
                          {name: "その他"}
                          ])
  ticket_movie = ticket.children.create({name: "映画"})
    ticket_movie.children.create([
                          {name: "邦画"},
                          {name: "洋画"},
                          {name: "その他"}
                          ])
  ticket_discount = ticket.children.create({name: "優待券/割引券"})
    ticket_discount.children.create([
                          {name: "ショッピング"},
                          {name: "レストラン/食事券"},
                          {name: "フード/ドリンク券"},
                          {name: "宿泊券"},
                          {name: "その他"}
                          ])
  ticket_another = ticket.children.create({name: "その他"})
    ticket_another.children.create([
                          {name: "その他"}
                          ])



motorcycle = Category.create(name: "accessory", ancestry: nil)
  motorcycle_body = motorcycle.children.create({name: "自動車本体"})
    motorcycle_body.children.create([
                              {name: "国内自動車本体"},
                              {name: "外国自動車本体"}
                              ])
    motorcycle_tire = motorcycle.children.create({name: "自動車タイヤ/ホイール"})
      motorcycle_tire.children.create([
                                {name: "タイヤ/ホイールセット"},
                                {name: "タイヤ"},
                                {name: "ホイール"},
                                {name: "その他"}
                                ])
  motorcycle_parts = motorcycle.children.create({name: "自動車パーツ"})
    motorcycle_parts.children.create([
                              {name: "サスペンション"},
                              {name: "ブレーキ"},
                              {name: "外装、エアロパーツ"},
                              {name: "ライト"},
                              {name: "内装品、シート"},
                              {name: "ステアリング"},
                              {name: "マフラー・排気系"},
                              {name: "エンジン、過給機、冷却装置"},
                              {name: "クラッチ、ミッション、駆動系"},
                              {name: "電装品"},
                              {name: "補強パーツ"},
                              {name: "凡用パーツ"},
                              {name: "外国自動車用パーツ"},
                              {name: "その他"}
                              ])
  motorcycle_accessory = motorcycle.children.create({name: "自動車アクセサリー"})
    motorcycle_accessory.children.create([
                              {name: "車内アクセサリー"},
                              {name: "カーナビ"},
                              {name: "カーオーディオ"},
                              {name: "車外アクセサリー"},
                              {name: "メンテナンス用品"},
                              {name: "チャイルドシート"},
                              {name: "ドライブレコーダー"},
                              {name: "レーダー探知機"},
                              {name: "カタログ/マニュアル"},
                              {name: "セキュリティ"},
                              {name: "ECT"},
                              {name: "その他"}
                              ])
  motorcycle_bodis = motorcycle.children.create({name: "オートバイ車体"})
    motorcycle_bodis.children.create([
                              {name: "その他"}
                              ])
  motorcycle_mparts = motorcycle.children.create({name: "オートバイパーツ"})
    motorcycle_mparts.children.create([
                              {name: "タイヤ"},
                              {name: "マフラー"},
                              {name: "エンジン、冷却装置"},
                              {name: "カウル、フェンダー、外装"},
                              {name: "サスペンション"},
                              {name: "ホイール"},
                              {name: "ステアリング"},
                              {name: "シート"},
                              {name: "ブレーキ"},
                              {name: "タンク"},
                              {name: "ライト、ウィンカー"},
                              {name: "チェーン、スブロケット、駆動系"},
                              {name: "メーター"},
                              {name: "電装系"},
                              {name: "ミラー"}
                              ])
  motorcycle_accessories = motorcycle.children.create({name: "オートバイアクセサリー"})
    motorcycle_accessories.children.create([
                              {name: "ヘルメット/シールド"},
                              {name: "バイクウエア/装備"},
                              {name: "メンテナンス"},
                              {name: "カタログ/マニュアル"},
                              {name: "その他"}
                              ])



another = Category.create(name: "another", ancestry: nil)
  another_sale = another.children.create({name: "まとめ売り"})
    another_sale.children.create([
                                  {name: "その他"}
                                  ])
  another_pet = another.children.create({name: "ペット用品"})
    another_pet.children.create([
                              {name: "ペットフード"},
                              {name: "犬用品"},
                              {name: "猫用品"},
                              {name: "魚用品/水草"},
                              {name: "小動物用品"},
                              {name: "昆虫類/両生類用品"},
                              {name: "かご/おり"},
                              {name: "鳥用品"},
                              {name: "虫類用品"},
                              {name: "その他"}
                              ])
  another_food = another.children.create({name: "食品"})
    another_food.children.create([
                              {name: "菓子"},
                              {name: "米"},
                              {name: "野菜"},
                              {name: "果物"},
                              {name: "調味料"},
                              {name: "魚介類(加工食品)"},
                              {name: "肉類(加工食品)"},
                              {name: "その他 加工品"},
                              {name: "その他"}
                              ])
  another_drink = another.children.create({name: "飲料/酒"})
    another_drink.children.create([
                              {name: "コーヒー"},
                              {name: "ソフトドリンク"},
                              {name: "ミネラルウォーター"},
                              {name: "茶"},
                              {name: "ウィスキー"},
                              {name: "ワイン"},
                              {name: "ブランデー"},
                              {name: "焼酎"},
                              {name: "日本酒"},
                              {name: "ビール、発泡酒"},
                              {name: "その他"}
                              ])
  another_travel = another.children.create({name: "日用品/生活雑貨/旅行"})
    another_travel.children.create([
                              {name: "タオル/バス用品"},
                              {name: "日用品/生活雑貨"},
                              {name: "洗剤/柔軟剤"},
                              {name: "旅行用品"},
                              {name: "防災関連グッズ"},
                              {name: "その他"}
                              ])
  another_antique = another.children.create({name: "アンティーク/コレクション"})
    another_antique.children.create([
                              {name: "雑貨"},
                              {name: "工芸品"},
                              {name: "家具"},
                              {name: "印刷物"},
                              {name: "その他"}
                              ])
  another_stationery = another.children.create({name: "文房具/事務用品"})
    another_stationery.children.create([
                              {name: "筆記具"},
                              {name: "ノート/メモ帳"},
                              {name: "テープ/マスキングテープ"},
                              {name: "カレンダー/スケジュール"},
                              {name: "アルバム/スクラップ"},
                              {name: "ファイル/バインダー"},
                              {name: "はさみ/カッター"},
                              {name: "カードホルダー/名刺管理"},
                              {name: "のり/ホッチキス"},
                              {name: "その他"}
                              ])
  another_office = another.children.create({name: "事務/店舗用品"})
    another_office.children.create([
                              {name: "オフィス用品一般"},
                              {name: "オフィス家具"},
                              {name: "店舗用品"},
                              {name: "OA機器"},
                              {name: "ラッピング/包装"},
                              {name: "その他"}
                              ])
  another_another = another.children.create({name: "その他"})
    another_another.children.create([
                              {name: "その他"}
                              ])
                                                      









