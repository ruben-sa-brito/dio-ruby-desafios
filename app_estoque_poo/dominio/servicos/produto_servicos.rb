
class ProdutoServico
    @arquivo = 'db/produtos.json'
    def self.todos
       dados = JsonManage.ler(@arquivo)
       produtos = []
       dados.each do |produto|
            produtos << Produto.new(produto)
       end
       return produtos    
    end

    def self.adicionar(produto)
        
        JsonManage.adicionar(@arquivo, self.transformar_para_hash(produto))
    end

    def self.atualizar(produto, quantidade)
        JsonManage.atualizar(@arquivo, produto, quantidade)
    end
    
    private
    def self.transformar_para_hash(produto)
        produto.instance_variables.each_with_object({}) do |var, hash|
            hash[var.to_s.delete("@")] = produto.instance_variable_get(var)
        end    
    end    
end    