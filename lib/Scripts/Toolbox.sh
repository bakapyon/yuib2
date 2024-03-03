#!/usr/bin/env bash

# Declara uma array de opções
declare -A command_scripts=(
    ["0"]="bash lib/Scripts/Toolbox.sh"
    ["1"]="bash lib/Scripts/Stop.sh node"
    ["2"]="bash lib/Scripts/Start.sh normal"
    ["3"]="bash lib/Scripts/Start.sh hide"
    ["4"]="bash lib/Scripts/Start.sh pm2hide"
    ["5"]="bash lib/Scripts/Start.sh pm2show"
    ["6"]="bash lib/Scripts/Stop.sh pm2"
    ["7"]="bash lib/Scripts/Start.sh autoreboot"
    ["8"]="bash lib/Scripts/Custom.sh"
    ["9"]="bash lib/Scripts/ModuleUpdate.sh"
    ["10"]="bash lib/Scripts/ModuleInstall.sh"
    ["11"]="bash lib/Scripts/Disconnect.sh"
    ["12"]="bash lib/Scripts/Reinstall.sh"
    ["13"]="bash lib/Scripts/jsonEditor.sh"
    ["14"]="bash lib/Scripts/PM2Install.sh"
    ["15"]="bash lib/Scripts/Requirements.sh"
    ["16"]="printf '\n[Yui] → Aguarde, carregando...\n' && python lib/Scripts/jsonexplorer.py"
    ["17"]="printf '[Yui] → Foi um prazer, volte sempre!\n'; exit"
)

# Define as opções do menu/seletor
options=(
    "1. Matar o processo do node"
    "2. Iniciar normalmente"
    "3. Iniciar de fundo"
    "4. Iniciar com PM2 sem monitor"
    "5. Iniciar com PM2 com monitor"
    "6. Parar a Yui em PM2"
    "7. Iniciar em modo Crash-Reboot"
    "8. Inicialização customizada"
    "9. Atualizar os módulos"
    "10. Instalar os módulos"
    "11. Deletar sessão do WhatsApp Web"
    "12. Atualizar/Reinstalar a Yui"
    "13. Configurar os JSON's"
    "14. Instalar PM2"
    "15. Instalar programas"
    "16. Editor JSON (GUI)"
    "17. Sair"
)

# Verifica se o diretório atual é o correto
checkInstall() {
    if [[ -e package.json && -d lib/Scripts ]]; then
        echo 0
    else
        echo 1
    fi
}

# Executa o script correspondente à opção escolhida
execute_option() {
    local option="$1"
    local script_path="${command_scripts[$option]}"
    if [ -n "$script_path" ]; then
        printf "\n"
        eval "$script_path"
        printf "\n"
    else
        printf "[Yui] → Opção inválida.\n"
        exit 1
    fi
}

# Exibe o menu de opções
show_menu() {
    printf "=====================================\n"
    printf "       Bem-vindo ao Menu da Yui\n"
    printf "=====================================\n"
    printf "[Yui] → Funções suportadas por mim:\n\n"
    PS3=$'\nEscolha uma opção (aperte enter se não mostrar opções): '
    select num in "${options[@]}"; do
        if [ -n "$num" ]; then
            execute_option "${num%%.*}"
        else
            printf "[Yui] → Opção inválida.\n"
            exit 1
        fi
    done
}

# Verifica se tem uma Yui
installNeeded=$(checkInstall)

# Se não
if [[ $installNeeded -ne 0 ]]; then
    # Pergunta ao usuário se deseja instalar
    printf "\n[Yui] → Você não parece ter os arquivos...deseja baixar o Projeto Yui (1 ou 2)?\n\n"
    select startOption in "Sim (y)" "Não (n)"; do
        case $startOption in
            # Faz as tarefas básicas para ter a Yui
            "Sim (y)")
                # Avisa
                printf "\n[Yui] → Baixando arquivos necessários...\n"

                # Se o não arquivo existe, baixa
                if ! [ -f "main.zip" ]; then
                    curl -LO -# https://github.com/pyon/yui/archive/refs/heads/main.zip
                fi

                # Avisa
                printf "\n[Yui] → Pronto! Extraindo arquivos baixados...\n"

                # Extrai e move
                unzip -o main.zip > /dev/null
                find yui-main/. -mindepth 1 -maxdepth 1 -exec mv {} . \;

                # Avisa
                printf "\n[Yui] → Limpando...\n\n"

                # Remove a pasta de cache
                rm -rf yui-main main.zip

                # Define se deve instalar os programas
                printf "\n[Yui] → Pronto, baixei meus arquivos! Deseja instalar os programas como NodeJS (ignore se já tiver feito)?\n\n"
                select installPG in "Sim (y)" "Não (n)"; do
                    case $installPG in
                        # Instala os programas
                        "Sim (y)")
                            eval "${command_scripts[15]}"
                            break
                            ;;
                        # Fecha
                        "Não (n)")
                            printf "\n[Yui] → Entendido, fique à vontade para voltar quando quiser!\n"
                            break
                            ;;
                    esac
                done

                # Termina essa case
                break;
            ;;

            # Ignora e fecha
            "Não (n)")
                printf "\n[Yui] → Entendido, fique à vontade para voltar quando quiser!\n"
                break
            ;;
        esac
    done

    # Limpa o terminal
    clear

    # Roda o novo arquivo e deleta o atual
    eval "${command_scripts[0]}"
    rm -rf Toolbox.sh
    exit 0
fi

# Exibe o menu
show_menu