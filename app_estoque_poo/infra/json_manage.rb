require 'json'
class JsonManage
    def self.ler(arquivo)
        unless File.exist?(arquivo)
            puts 'O arquivo não existe'
            return nil
        end

        begin
            jsondata = File.read(arquivo)
            data = JSON.parse(jsondata)
            return data
        rescue JSON::ParserError => e
            puts "Erro ao analisar o arquivo JSON: #{e}"
            return nil
        end 

    end
    
    def self.adicionar(arquivo, obj)
        data = ler(arquivo) || []
        data << obj

        File.open(arquivo, 'w') do |file|
            file.puts JSON.pretty_generate(data)
        end    
           
    end
    
    def self.atualizar(arquivo, produto, quantidade)
        data = ler(arquivo) || []
        data.each do |prod|
            if prod["id"] == produto.id
                prod["quantidade"] -= quantidade
            end    
        end    
        File.open(arquivo, 'w') do |file|
            file.puts JSON.pretty_generate(data)
        end    
           
    end 
end    