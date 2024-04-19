def redirar_estoque(produtos)
    mensagem('Lista de produtos...', usar_limpar_tela=false, usar_timer=false)
    

    table = Terminal::Table.new do |t|
        t.headings = ['id', 'nome', 'descrição', 'preço', 'quantidade']
        produtos.each do |row|
            t.add_row [row[:id], row[:nome], row[:descricao], row[:preco], row[:quantidade]]
        end
    end   
    
    puts table

    mensagem_amarelo 'Digite o id do produto que deseja remover', false, false
    id = gets.to_i
    produto = produtos.find {|p| p[:id]==id}
    unless produto
        limpar_tela
        mensagem_vermelho("Produto do id #{produto[:id]} nao encontrado", false, false)
        mensagem_amarelo("Degeja digitar o numero novamente? (s/n)", false, false)
        opcao = gets.chomp.downcase
        if opcao == "s"
            redirar_estoque(produtos)
        end
        
        return
    end
    
    puts 'Digite a quantidade: '
    quantidade_retirada = gets.to_i
    produto[:quantidade] -= quantidade_retirada

    limpar_tela


end  