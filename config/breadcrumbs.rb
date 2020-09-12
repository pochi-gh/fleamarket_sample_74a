crumb :root do
  link "トップページ", root_path
end

crumb :mypage do
  link "#{current_user.nickname}のマイページ", user_path(current_user.id), method: :get
end

crumb :adress_change do
  link "住所変更", edit_address_path(current_user.id)
  parent :mypage
end

crumb :mail_password_change do
  link "メール/パスワード変更", edit_user_registration_path
  parent :mypage
end

crumb :mypage_card do
  link "クレジットカード", controller: 'credit_cards'
  parent :mypage
end

crumb :mypage_personal_information do
  link "登録されている個人情報", personal_infomation_user_path(current_user.id)
  parent :mypage
end

crumb :mypage_logout do
  link "ログアウト", logout_user_path(current_user.id)
  parent :mypage
end

crumb :items_new do
  link "商品出品ページ", new_item_path
end

crumb :item_show do
  link "商品の詳細ページ", item_path, method: :get
end

crumb :item_edit do
  link "商品の編集ページ", edit_item_path, method: :get
  parent :item_show
end

crumb :item_confirm do
  link "購入確認ページ", confirm_item_path, method: :get
  parent :item_show
end

crumb :register_card do
  link "クレジットカード登録ページ", new_credit_card_path, method: :get
  parent :mypage
end


