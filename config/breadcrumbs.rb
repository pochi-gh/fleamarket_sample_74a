crumb :root do
  link "トップページ", root_path
end

crumb :mypage do
  link "#{current_user.nickname}のマイページ", user_path(current_user.id), method: :get
end

crumb :comment do
  link "コメントした商品", comment_item_users_path
  parent :mypage
end

crumb :sell_item_lists do
  link "出品した商品", sell_item_users_path
  parent :mypage
end

crumb :purchase_items do
  link "購入した商品", purchase_item_users_path
  parent :mypage
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
  @item = Item.find(params[:id])
  link "商品の詳細ページ", item_path(@item)
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




