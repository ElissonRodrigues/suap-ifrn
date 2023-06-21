GREEN='\033[0;32m'
RED='\033[1;31m'
NC='\033[0m' # Sem cor (reset)

login_code() {
    echo -e "${GREEN}Criando linhas para conexão com a internet no .bashrc${NC}"
    sleep 3
    echo ' ' >> ~/.bashrc
    echo 'ping -c 4 8.8.8.8 > /dev/null 2>&1' >> ~/.bashrc
    echo 'if [ $? -eq 0 ]; then' >> ~/.bashrc
    echo '    echo' >> ~/.bashrc
    echo 'else' >> ~/.bashrc
    echo '    echo -n "Matricula do Suap: "' >> ~/.bashrc
    echo '    read username' >> ~/.bashrc
    echo '    echo -n "Senha do Suap: "' >> ~/.bashrc
    echo '    read -s password' >> ~/.bashrc
    echo '    curl -k -d "escapeUser=$username&user=$username&passwd=$password&ok=Login" -X POST "https://autenticacao-sga.ifrn.local:6082/php/uid.php?vsys=1&rule=0"' >> ~/.bashrc
    echo 'fi' >> ~/.bashrc
    
    echo -e "\n${GREEN}Criando arquivo "internet.sh" para conexão manual com a internet...${NC}"
    sleep 3
    echo '"Matricula do Suap: "' > ~/.internet.sh
    echo 'read username' >> ~/.internet.sh
    echo 'echo -n "Senha do Suap: "' >> ~/.internet.sh
    echo 'read -s password' >> ~/.internet.sh
    echo 'curl -k -d "escapeUser=$username&user=$username&passwd=$password&ok=Login" -X POST "https://autenticacao-sga.ifrn.local:6082/php/uid.php?vsys=1&rule=0"' >> ~/.internet.sh
    clear
    echo -e "${GREEN}O script de conexão está pronto!\n\nNo próximo login, caso necessário, será solicitado o nome de usuário e senha do SUAP.${NC}"

}

if [ -f ~/.bashrc ]; then
    clear
    echo -e "${RED}Arquivo .bashrc já existe.${NC}"
    sleep 3
    login_code
else
    echo -e "\n${GREEN}Criando arquivo .bashrc...${NC}"
    touch .bashrc
    echo -e "\n${GREEN}Arquivo .bashrc criado com sucesso.${NC}"
    login_code
fi

#©Elisson Rodrigues - github.com/ElissonRodrigues


