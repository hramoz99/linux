### `COMANDOS`

#### Apresentação do usuário logado 
```
whoami
```

#### Exibir informações sobre usuários que estão atualmente conectados
```
who -u
```
#### Entrar com usuário ROOT
```
sudo su -
```


#### Movimentação entre pastas/arquivos
```
cd <pasta>
 
    *control a = vai para o inicio da linha
    *control e = vai para o fim da linha 
    *control l = clear
    *control d = exit
```

#### Verificar o diretório atual
```
pwd
```

#### Limpar a tela 
```
clear ou ctrl + l
```

#### Criar pastas
```
mkdir <ome-da-pasta>
```

#### Criar pasta e sub-pastas SIMULTANEAMENTE
```
mkdir -p <pasta>/<sub_pasta>
```

#### Apagar arquivos 
```
rm <nome-do-arquivo>
```

#### Apagar pasta
```
rm -r <nome-da-pasta>
```

#### Visualizar arquivos 
```
cat <caminho>
```

#### Parâmetro de busca de arquivos - **find**
```
find <diretório> -name <nome-do-arquivo-ou-pasta>
      
        EX: find /etc/-name.conf
```
#### Localizar instalação dos programas
```
which <nome-do-programa>
```

#### Copiar arquivos 
```
cp <arquivo-de-origem> <arquivo-de-destino>
```

#### Copiar pastas 
```
cp -r <arquivo-de-origem> <arquivo-de-destino>
```

#### Mover arquivos e pastas 
```
mv <pasta-caminho> <pasta-destino>
```

#### Adicionar usuário 
```
adduser <nome-do-usuário>
UID - Identificação numérica única do Usuário
```

#### Deletar usuário 
```
deluser <nome-do-usuário>
```

#### Adicionar grupo 
```
addgroup <nome-do-grupo>
GID - Identificação numérica única do Grupo
```

#### Deletar grupo
```
delgroup <nome-do-grupo>
```

#### Trocar a senha de um usuário
```
passwd
```

#### Separação de usuário por grupo
```
adduser [usuario] [grupo] 
deluser [usuario] [grupo] 
```

#### Exibir as últimas 10 linhas de um arquivo
```
tail
```

#### Contar o número de palavras, caracteres e linhas de um arquivo 
```
$ wc -w 
```

#### Exibir as últimas linhas de um arquivo em tempo real 
```
tail -f 
```

#### Filtrar informações específicas de um arquivo
```
grep <String> <local>
```

#### Pesquisar texto em saídas de comandos
```
| grep <String>
```
#### Trocar o usuário DONO da pasta/arquivo
```
chown <usuario> <pasta/arquivo>

 OBS: Para trocar usuário e grupo dona da pasta ao mesmo tempo **chown usuario:grupo [pasta/arquivo]
```

#### Trocar o grupo DONO da pasta/arquivo
```
chgrp <grupo> <pasta/arquivo>

 OBS: Para trocar os grupos donos de uma vez use **chgrp -R**
```

#### Trocar as permissões de uma pasta/arquivo 
```
chmod <permissao> <pasta/arquivo>



     Permissões

    d     rwx        rwx      rwx
       U[suario]   G[rupo]   O[utros]
    r - ler
    w - escrever
    x - executar

    desenvolvimento - d rwx r-x r-x [Permissão antiga]
                        111 101 101
                         7   5   5
    desenvolvimento - d rwx rwx r-x [Permissão nova]
                        111 111 101
                         7   7   5

    

	       ---------------------------------------
	        número    binário equiv.   permissões
	       ---------------------------------------
                0           000            ---
                1           001            --x
                2           010            -w-
                3           011            -wx
                4           100            r--
                5           101            r-x
                6           110            rw-
                7           111            rwx
	       ---------------------------------------
```
#### Listar os diretórios e subdiretórios 
```
ls -lR
    
    * Arquivo com inicial d = diretório
    * Arquivo com inicial l = link
    * Arquivo com inicial c = caractér
    * Arquivo com inicial b = dispositivo de bloco
    * Arquivo com inicial - = arquivo simples
    * Arquivo com inicial s = comunicação do SO com um pc
```
#### Listar os diretórios e diretórios ocultos
```
ls -la
```
#### Listar as informações do sistema
```
lshw
```

#### Editores de texto para o terminal
```
    
    nano

        Pesquisar: Ctrl+W
        Copiar = Alt+6
        Recortar = Ctrl+K
        Colar = Ctrl+U

        Salvar = Ctrl+O
        Sair = Ctrl+X

        Desfazer = Alt+U

    vim (Versão otimizada do 'vi')

        : = Inserir comando
        i = Entrar no modo de Inserção
        :w = Salvar o arquivo
        :q = Sair do arquivo
        :q! = Salvar de maneira "forçada"
        :wq = Salvar e sair
         v = Entrar no modo visual
         yy = Copiar
         p = Colar abaixo
         P = Colar acima
         u = Desfazer
         H = Cursor vai para a primeira linha do arquivo
         G = Cursos vai para a última linha do arquivo
         dd = Deleta a linha 
         set nu = Numerar as linhas
```        
   

#### Nome das interfaces 
```
lo - Loopback
enp0s3 - Interface de Rede (Padrão antigo - eth0)
```

#### Visualizar informações de rede 
```
ip add
ifconfig (instalar apt-get install "net-tools")
```

#### Limpar e solicitar um endereço IP novo para o DHCP
```
ip add flush dev <nome-da-interface>
   
  Exemplo: ip add flush dev enp0s3
```

### LIGAR E DESLIGAR UMA INTERFACE ESPÉCIFICA

#### Desligar uma interface 
```
ifdown <nome-da-interface>
```

#### Ligar uma interface 
```
ifup <nome-da-interface>
```

#### Visualizar os discos existentes 
```
fdisk -l
```

#### Visualizar os discos em execução 
```
df -h
```

#### Criar arquivos vazios 
```
touch <nome-do-arquivo>
    
  EX: touch /mnt/disco2G/arquivo2.txt

```
#### Desligar a máquina 
```
init 0 
```

#### Defnir horário para a MÁQUINA desligar 
```
Shutdown -h <horário> 
```

#### Reiniciar a MÁQUINA 
```
reboot
```
#### Visualizar uma variável
```
echo $<nome-da-variável]
```


#### Visualizar todas variáveis 
```
set 
```

#### Abreviação de comandos 
```
alias 
  EXEMPLO = comando completo [iptables -t nat -nL]
            abreviado [alias nat = "iptables -t nat -nL"]
```

#### Cortar (extrair) seções específicas de linhas de um arquivo
```
cut -d ',' <nome-do-arquivo.csv>

```

#### Informe os 16 comandos selecionados ANTERIORMENTE
```
fc -l
```

#### Informe os comandos selecionados ANTERIORMENTE 
```
history <valor>
```

#### Versão do KERNEL
```
uname -a
```


#### Explicação a função do comando 
```
help <comando> 
```

#### Explorador amplo da palavra chave 
```
apropos <palavra-chave>
```

#### Exploração específica da palavra chave 
```
whatis <palavra-chave>
```

#### Manual do comando 
```
man <comando>
```

#### Manual do aruqivo de configuração 
```
man <seção> <comando>
```

#### Consulta de comandos 
```
xman 
```
 
#### Pasta/Manual do Comando
```
whereis <comando> 
```
     
#### Cria novos arquivos 
```
touch <nome-do-arquivo>
```   

#### Características de um arquivo
```
stat <nome-do-arquivo.extensão>
```

#### Empacotador de arquivos 
```
tar [opções] <nome-arquivo> <arquivo1> <arquivo2>
 
     Opções
         *-c ou -create  - inicia o empacotamento no arquivo
         *-f ou file     - reconhece o arquivo como próprio do sistema
         *-j ou -bzip2   - compacta o arquivo no momento do empacotamento (bzip2)
         *-J ou -xz      - compacta o arquivo no momento do empacotamento (xz)
         *-v ou -verbose - exibi todo o processo de empacotamento/desempacotamento
         *-t ou -list    - visualizar o conteúdo do pacote
         *-x ou -extract - desempacota o arquivo ou extrai o conteúdo de um pacote tar
```

#### Compactador de arquivos 
```
 gzip [opções] <arquivo>
 
     Opções
         *-c ou -stdout      - compacta o arquivo original
         *-d ou -decompress  - descompacta os arquivos .gzip
         *-f ou -force       - força a compactação/descompactação
         *-l ou -list        - exibi informações detalhadas sobre o arquivo compactado/descompactado
         *-t ou -test        - testa a integridade do arquivo
         *-v ou -verbose     - exibi o processo de compactação/descompactação
         *-<nivel> ou -fast  - tamanho da compactação
   ```          
  
#### Listar todos processos
```
top ou htop
```

#### Parar processos
```
Ctrl+Z
```

#### Voltar os processos *PARADOS*
```
fg <número-do-processo>
```

#### Visualizar processos *PARADOS*
```
jobs
```

#### Matar qualquer processo 
```
kill <número-do-processo>
```

#### Criar processos/prioridade
```
nice
```


#### Alterar processos/prioridade
```
renice
```





 


               
            
   
