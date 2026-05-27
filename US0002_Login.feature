# language: pt

Funcionalidade: Autenticação de usuário

  Como cliente da EBAC-SHOP
  Quero fazer o login na plataforma
  Para visualizar meus pedidos

  Cenário: Login com dados válidos
    Dado que eu esteja na tela de login
    Quando eu inserir um usuário válido
    E inserir uma senha válida
    Então devo ser direcionado para a tela de checkout

  Cenário: Login com dados inválidos
    Dado que eu esteja na tela de login
    Quando eu inserir um usuário inválido
    E inserir uma senha inválida
    Então o sistema deve exibir a mensagem "Usuário ou senha inválidos"