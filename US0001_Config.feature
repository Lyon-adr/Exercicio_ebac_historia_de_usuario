            # language: pt

            Funcionalidade: Configuração de produto

            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu esteja na página do produto

            Cenário: Configuração válida do produto
            Quando eu selecionar a cor "Azul"
            E selecionar o tamanho "M"
            E selecionar a quantidade "2"
            Então o produto deve ser adicionado ao carrinho
            E deve exibir a mensagem "Produto adicionado ao carrinho"

            Cenário: Produto sem selecionar tamanho
            Quando eu selecionar a cor "Vermelho"
            E não selecionar o tamanho
            E selecionar a quantidade "3"
            Então o sistema deve exibir a mensagem "Por favor selecione um tamanho"

            Cenário: Quantidade acima do permitido
            Quando eu selecionar a cor "Preto"
            E selecionar o tamanho "G"
            E selecionar a quantidade "13"
            Então o sistema deve exibir a mensagem "Limite máximo de 10 produtos por venda"

            Cenário: Limpar configurações do produto
            Quando eu selecionar a cor "Azul"
            E selecionar o tamanho "P"
            E selecionar a quantidade "5"
            E clicar no botão "Limpar"
            Então todos os campos devem voltar ao estado original

            Esquema do Cenário: Seleção de produtos

            Quando eu selecionar a cor "<cor>"
            E selecionar o tamanho "<tamanho>"
            E selecionar a quantidade "<quantidade>"
            Então deve exibir a mensagem "<mensagem>"

            Exemplos:
            | cor      | tamanho | quantidade | mensagem                               |
            | Azul     | P       | 1          | Produto adicionado ao carrinho         |
            | Preto    | M       | 5          | Produto adicionado ao carrinho         |
            | Vermelho | G       | 13         | Limite máximo de 10 produtos por venda |