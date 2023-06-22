# SOBRE O SCRIPT


Este script em Shell (.sh) tem como objetivo simplificar o processo de autenticação para obter acesso à internet.

# COMO ELE FUNCIONA 

O objetivo deste script é automatizar a inclusão das linhas de autenticação (usando o método POST) no arquivo .bashrc. Além disso, o script também cria um arquivo chamado "internet.sh" que pode ser utilizado para realizar uma conexão manual com a internet, caso uma senha incorreta seja inserida quando solicitada pelo código no .bashrc.

Ao executar o script, ele irá inserir automaticamente as linhas necessárias no arquivo .bashrc, garantindo que o processo de autenticação seja realizado de forma automática (se necessário) sempre que o sistema for iniciado. 

# INSTALAÇÃO

 👮‍♂️Comando para usuário root (~#):

```shell
wget https://raw.githubusercontent.com/ElissonRodrigues/suap-ifrn/main/setup.sh -O setup.sh && chmod +x setup.sh && ./setup.sh
```
 👨‍🔧Comando para usuários normais (~$): 

```shell
wget https://raw.githubusercontent.com/ElissonRodrigues/suap-ifrn/main/setup.sh -O setup.sh && sudo chmod +x setup.sh && ./setup.sh
```
