require_relative 'display/menu'
require_relative 'core/cadastro_de_produto'
require_relative 'core/listar_produtos'
require_relative 'core/retirada_de_produto'
require 'terminal-table'
require 'colorize'

produtos = [{
        id: 1,
        nome: 'maça',
        descricao: 'maça muito docinha e gostosinha',
        preco: '7 pilas',
        quantidade: 5000
    }, 
    {
        id: 2,
        nome: 'banana',
        descricao: 'bananinha',
        preco: '5 pilos',
        quantidade: 3
    },
     {
        id: 3,
        nome: 'suco de macaxeira',
        descricao: 'um suco mieo estraho',
        preco:'30 reais',
        quantidade: 76
    }
]
iniciar_menu(produtos)