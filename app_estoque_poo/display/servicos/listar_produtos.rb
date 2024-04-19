

def listar_produtos
    mensagem('Lista de produtos...', usar_limpar_tela=false, usar_timer=false)
    

    table = Terminal::Table.new do |t|
        t.headings = ['id', 'nome', 'descrição', 'preço', 'quantidade']
        ProdutoServico.new(JsonManage, 'db/produtos.json').todos.each do |produto|
            t.add_row [produto.id, produto.nome, produto.descricao, produto.preco, produto.quantidade]
        end
    end   
    
    puts table
    mensagem_amarelo 'pressione enter para continuar', false, false
    gets
    limpar_tela


end    