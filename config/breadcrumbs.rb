crumb :root do
  link "トップページ", root_path
end

crumb :mypage do
  link "#{current_user.nickname}のマイページ", user_path(current_user.id), method: :get
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

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).