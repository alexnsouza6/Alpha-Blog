#language: pt
#encoding: utf-8

@create_category
Funcionalidade: create_category
  Como Administrador do Sistema
  Para que eu possa organizar as categorias de artigos
  Eu quero criar uma categoria

  Cenario: Criar uma categoria válida
  Dado esteja cadastrado e logado como 'admin@admin.com', '123123'
  E que eu esteja na página de criação de categoria
  E que o campo nome esteja preenchido:
  | name | Sports |
  Quando eu clicar em 'Add Category'
  Então eu devo ver uma mensagem escrita 'Category was successfully created!'
