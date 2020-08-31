lady = Category.create(:name=>"レディース")

lady_1 = lady.children.create(:name=>"トップス")
lady_2 = lady.children.create(:name=>"ジャケット/アウター")

lady_1.children.create([{:name=>"Tシャツ/カットソー(半袖/袖なし)"}, {:name=>"Tシャツ/カットソー(七分/長袖)"},{:name=>"その他"}])
lady_2.children.create([{:name=>"テーラードジャケット"}, {:name=>"ノーカラージャケット"}, {:name=>"Gジャン/デニムジャケット"},{:name=>"その他"}])