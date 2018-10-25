#language: pt
#encoding: utf-8

@list_category
Funcionalidade: list_category
  Como Usuário do Sistema
  Para que eu veja as categorias de artigos
  Eu quero visualizar uma lista de categorias

  Cenario: Criar uma categoria válida
    Dado esteja cadastrado e logado como 'admin@admin.com', '123123' e eu seja Admin
    E que existam 3 categorias cadastradas
    Quando eu visitar a pagina de listagem de categorias
    Então eu devo ver 3 categorias
