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

