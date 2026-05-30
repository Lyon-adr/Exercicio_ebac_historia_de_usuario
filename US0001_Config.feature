            # language: pt

            Funcionalidade: Configuração de produto

            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu esteja na página do produto

            Cenário: Configuração válida do produto
            Quando selecionar o tamanho "M", quantidade "2" e cor "Azul"
            E clicar no botão finalizar compra
            Então deve o sistema deve exibir a mensagem "produto adicionado ao carrinho"

            Cenário: Produto sem selecionar tamanho
            Quando eu selecionar a cor "Vermelho" e a quantidade "3", não selecionar o tamanho
            E clicar em finalizar compra
            Então o sistema deve exibir a mensagem "Por favor selecione um tamanho"
            
            Cenário: Quantidade acima do permitido
            Quando eu selecionar a cor "Preto", selecionar o tamanho "G", e a quantidade "13"
            E clicar em finalizar compra
            Então o sistema deve exibir a mensagem "Limite máximo de 10 produtos por venda"

            Cenário: Limpar configurações do produto
            Quando eu selecionar a cor "Azul", o tamanho "P", e a quantidade "5"
            E clicar no botão "Limpar"
            Então todos os campos devem voltar ao estado original

            Esquema do Cenário: Seleção de produtos

            Quando eu selecionar a cor "<cor>", o "<tamanho>", e a "<quantidade>"
            Então deve exibir a mensagem "<mensagem>"

            Exemplos:
            | cor      | tamanho | quantidade | mensagem                               |
            | Azul     | P       | 1          | Produto adicionado ao carrinho         |
            | Preto    | M       | 5          | Produto adicionado ao carrinho         |
            | Vermelho | G       | 13         | Limite máximo de 10 produtos por venda |