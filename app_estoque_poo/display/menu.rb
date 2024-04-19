require_relative 'operacoes_de_tela'

def iniciar_menu
    loop do
        puts mensagem_amarelo('======Escolha uma das opções abaixo: ======', false, false)
        puts mensagem_azul('1 - Cadastro de produtos', false, false)
        puts mensagem_azul('2 - Lista de produtos', false, false)
        puts mensagem_azul('3 - Retirada do estoque', false, false)
        puts mensagem_azul('4 - Sair', false, false)
    

        opcao = gets.to_i

        case opcao
        when 1
            cadastro_produto
        when 2
            listar_produtos
        when 3
            redirar_estoque
        when 4
            limpar_tela
            exit
        else
            mensagem 'Opção inválida'
        end    
    end
end