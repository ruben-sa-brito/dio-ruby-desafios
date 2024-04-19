def mensagem(msg, usar_limpar_tela=true, usar_timer=true, timer=5)
    limpar_tela if usar_limpar_tela
    puts msg
    sleep(timer) if usar_timer
    limpar_tela if usar_limpar_tela
end

def limpar_tela
    if Gem.win_platform?
        system('cls')
    else
        system('clear')  
    end      
end


def mensagem_vermelho(texto, usar_limpar_tela=true, usar_timer=true, timer=5)
  mensagem(texto.colorize(:red), usar_limpar_tela, usar_timer, timer)
end

def mensagem_verde(texto, usar_limpar_tela=true, usar_timer=true, timer=5)
  mensagem(texto.colorize(:green), usar_limpar_tela, usar_timer, timer)
end

def mensagem_amarelo(texto, usar_limpar_tela=true, usar_timer=true, timer=5)
  mensagem(texto.colorize(:yellow), usar_limpar_tela, usar_timer, timer)
end

def mensagem_azul(texto, usar_limpar_tela=true, usar_timer=true, timer=5)
    mensagem(texto.colorize(:blue), usar_limpar_tela, usar_timer, timer)
  end