            # language: pt

            Funcionalidade: Checkout

            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Cenário: Cadastro realizado com sucesso
            Dado que eu esteja na página de checkout
            Quando eu preencher o nome "João"
            E preencher o sobrenome "Silva"
            E preencher o país "Brasil"
            E preencher o endereço "Rua A, 123"
            E preencher a cidade "São Paulo"
            E preencher o CEP "01000-000"
            E preencher o telefone "11999999999"
            E preencher o e-mail "joao@email.com"
            E clicar no botão "Finalizar compra"
            Então deve exibir a mensagem "Compra finalizada com sucesso"

            Cenário: Cadastro com e-mail inválido
            Dado que eu esteja na página de checkout
            Quando eu preencher todos os campos obrigatórios
            E informar o e-mail "joaoemail.com"
            E clicar no botão "Finalizar compra"
            Então deve exibir a mensagem "E-mail em formato inválido"

            Cenário: Cadastro com campos obrigatórios vazios
            Dado que eu esteja na página de checkout
            Quando eu deixar um campo obrigatório marcado com asterisco vazio
            E clicar no botão "Finalizar compra"
            Então deve exibir a mensagem "Preencha todos os campos obrigatórios"

            Esquema do Cenário: Validação do cadastro no checkout
            Dado que eu esteja na página de checkout
            Quando eu preencher o nome "<nome>"
            E preencher o sobrenome "<sobrenome>"
            E preencher o país "<pais>"
            E preencher o endereço "<endereco>"
            E preencher a cidade "<cidade>"
            E preencher o CEP "<cep>"
            E preencher o telefone "<telefone>"
            E preencher o e-mail "<email>"
            E clicar no botão "Finalizar compra"
            Então deve exibir a mensagem "<mensagem>"

            Exemplos:
            | nome    | sobrenome | pais   | endereco   | cidade    | cep       | telefone    | email             | mensagem                              |
            | João    | Silva     | Brasil | Rua A, 123 | São Paulo | 01000-000 | 11999999999 | joao@email.com    | Compra finalizada com sucesso         |
            | Ana     | Souza     | Brasil | Rua B, 456 | São Paulo | 02000-000 | 11988888888 | anaemail.com      | E-mail em formato inválido            |
            | Beatriz |           | Brasil | Rua C, 789 | São Paulo | 03000-000 | 11977777777 | beatriz@email.com | Preencha todos os campos obrigatórios |