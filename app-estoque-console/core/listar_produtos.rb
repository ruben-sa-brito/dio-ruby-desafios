

def listar_produtos(produtos)
    mensagem('Lista de produtos...', usar_limpar_tela=false, usar_timer=false)
    

    table = Terminal::Table.new do |t|
        t.headings = ['id', 'nome', 'descrição', 'preço', 'quantidade']
        produtos.each do |row|
            t.add_row [row[:id], row[:nome], row[:descricao], row[:preco], row[:quantidade]]
        end
    end   
    
    puts table
    mensagem_amarelo 'pressione enter para continuar', false, false
    gets
    limpar_tela


end    