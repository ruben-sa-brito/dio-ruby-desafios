
class ProdutoServico

    def initialize(repo, arquivo)
        @repo = repo
        @arquivo = arquivo
    end    

    @arquivo = 'db/produtos.json'
    def todos
       dados = @repo.ler(@arquivo)
       produtos = []
       dados.each do |produto|
            produtos << Produto.new(produto)
       end
       return produtos    
    end

    def adicionar(produto)
        
        @repo.adicionar(@arquivo, self.transformar_para_hash(produto))
    end

    def atualizar(produto, quantidade)
        @repo.atualizar(@arquivo, produto, quantidade)
    end
    
    private
    def transformar_para_hash(produto)
        produto.instance_variables.each_with_object({}) do |var, hash|
            hash[var.to_s.delete("@")] = produto.instance_variable_get(var)
        end    
    end    
end    