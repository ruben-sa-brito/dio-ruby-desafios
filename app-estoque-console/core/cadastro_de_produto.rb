def cadastro_produto(produtos)
    mensagem('Iniciando cadastro de produtos...', usar_limpar_tela=true, usar_timer=true, timer=1.5)
    mensagem_azul('Digite o nome do produto', false, false)
    nome = gets.chomp
    limpar_tela

    mensagem("Digite a descrição do produto (#{nome.colorize(:green)})", false, false)
    descrição = gets.chomp
    limpar_tela
    
    mensagem_azul("Digite o preço do produto (#{nome.colorize(:green)})", false, false)
    preco = gets.to_f
    limpar_tela

    mensagem_azul("Digite a quantidade do produto (#{nome.colorize(:green)})", false, false)
    quantidade_estoque = gets.to_f
    limpar_tela

    produtos << {
        id: Time.now.to_i,
        nome: nome,
        descricao: descrição,
        preco: preco,
        quantidade: quantidade_estoque
    }

    mensagem_verde("Produto cadastrado com sucesso!", true, true, timer=2)
end    