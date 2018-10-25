# This is the steps file referred to list_category feature
# Place your code relative to that feature here

Dado("que existam {int} categorias cadastradas") do |categories_num|
  categories_num.times do
    Category.create(name: Faker::Cannabis.strain)
  end
end

Quando("eu visitar a pagina de listagem de categorias") do
  visit(categories_path)
end

Então("eu devo ver {int} categorias") do |int|
  expect(page).to have_css('.category-name', count: int)
end