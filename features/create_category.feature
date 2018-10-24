#language: pt
#encoding: utf-8

@create_category
Funcionalidade: create_category
  Como Administrador do Sistema
  Para que eu possa organizar as categorias de artigos
  Eu quero criar uma categoria

  Contexto: Realiza Login e Entra na página de criação de categoria
    Dado esteja cadastrado e logado como 'admin@admin.com', '123123'
    E que eu esteja na página de criação de categoria
  Cenario: Criar uma categoria válida
  E que o campo nome esteja preenchido:
  | Name | Sports |
  Quando eu clicar em 'Create Category'
  Então eu devo ver uma mensagem escrita 'Category was successfully created!'

  Cenario: Criar uma categoria inválida
    E que o campo nome esteja preenchido:
    | Name |  |
    Quando eu clicar em 'Create Category'
    Então eu devo ver uma mensagem escrita 'prohibited this Category from being saved'