# This is the steps file referred to create_category feature
# Place your code relative to that feature here
Dado("esteja cadastrado e logado como {string}, {string}") do |email, password|
  @user = User.create(email: email, username: 'Admin', password: password)
  visit(login_path)
  fill_in('Email', with: @user.email)
  fill_in('Password', with: @user.password)
  click_button('Log in')
end

Dado("que eu esteja na página de criação de categoria") do
  visit(new_category_path)
end

Dado("que o campo nome esteja preenchido:") do |table|
  table.rows_hash.each do |field, value|
      fill_in field, :with => value
  end
end

Quando("eu clicar em {string}") do |add_category|
  @categories_num = Categorie.count
  click_button("#{add_category}")
end


Então("eu devo ver uma mensagem escrita {string}") do |flash_msg|
  page.has_content?(flash_msg)
end