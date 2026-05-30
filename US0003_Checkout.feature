            # language: pt

            Funcionalidade: Checkout

            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Cenário: Cadastro realizado com sucesso
            Dado que eu esteja na página de checkout
            Quando eu preencher todos os campos obrigatórios
            E clicar em fazer checkout
            Então deve exibir a mensagem "Compra finalizada com sucesso"

            Cenário: Cadastro com campos obrigatórios vazios
            Dado que eu esteja na página de checkout
            Quando eu deixar um campo obrigatório marcado com asterisco vazio
            E clicar em fazer checkout
            Então deve exibir a mensagem "Preencha todos os campos obrigatórios"

            Esquema do Cenário: Validação do cadastro no checkout
            Dado que eu esteja na página de checkout
            Quando eu preencher o nome "<nome>", "<sobrenome>", "<pais>", "<endereco>", "<cidade>", "<cep>", "<telefone>", "<email>"
            E clicar em fazer checkout
            Então deve exibir a mensagem "<mensagem>"

            Exemplos:
            | nome    | sobrenome | pais   | endereco   | cidade    | cep       | telefone    | email             | mensagem                              |
            | João    | Silva     | Brasil | Rua A, 123 | São Paulo | 01000-000 | 11999999999 | joao@email.com    | Compra finalizada com sucesso         |
            | Ana     | Souza     | Brasil | Rua B, 456 | São Paulo | 02000-000 | 11988888888 | anaemail.com      | Preencha todos os campos obrigatórios |
            | Beatriz |           | Brasil | Rua C, 789 | São Paulo | 03000-000 | 11977777777 | beatriz@email.com |