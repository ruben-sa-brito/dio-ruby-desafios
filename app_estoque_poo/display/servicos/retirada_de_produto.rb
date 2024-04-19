def redirar_estoque
    mensagem('Lista de produtos...', usar_limpar_tela=false, usar_timer=false)
    

    table = Terminal::Table.new do |t|
        t.headings = ['id', 'nome', 'descrição', 'preço', 'quantidade']
        ProdutoServico.new(JsonManage, 'db/produtos.json').todos.each do |produto|
            t.add_row [produto.id, produto.nome, produto.descricao, produto.preco, produto.quantidade]
        end
    end   
    
    puts table

    mensagem_amarelo 'Digite o id do produto que deseja remover', false, false
    id = gets.to_i
    produto = ProdutoServico.new(JsonManage, 'db/produtos.json').todos.find {|p| p.id==id}
    unless produto
        limpar_tela
        mensagem_vermelho("Produto do id #{id} nao encontrado", false, false)
        mensagem_amarelo("Degeja digitar o numero novamente? (s/n)", false, false)
        opcao = gets.chomp.downcase
        if opcao == "s"
            redirar_estoque
        end
        
        return
    end
    
    puts 'Digite a quantidade: '
    quantidade_retirada = gets.to_i
    ProdutoServico.new(JsonManage, 'db/produtos.json').atualizar(produto, quantidade_retirada)

    limpar_tela


end  