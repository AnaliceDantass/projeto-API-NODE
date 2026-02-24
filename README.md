# Projeto API REST em Node.js

Esse repositório foi feito com o objetivo de armazenar os códigos produzidos na etapa de desenvolvimento da aplicação API REST em Node.js — projeto prático da Unidade 5 da trilha de PSC — e orientar adequadamente por meio de instruções como executar a aplicação feita. E, além disso, ele servirá como um guia de informações necessárias tanto para a execução da API quanto informações relacionadas aos componentes utilizados e demais ferramentas de desenvolvimento. 

# Instalar as ferramentas necessárias 
Para executar a API REST é preciso inicialmente ter o Node.js instalado na sua máquina, pois ele é o ambiente de execução que permite aos desenvolvedores criarem todo tipo de aplicativos e ferramentas do lado servidor (backend) em JavaScript.

## Instalação do Node.js no Windows:
- **Acesse a página de download do Node.js:** Vá até osite oficial do Node.js.
- **Baixe o instalador:**  Clique no botão "Windows Installer (.msi)" referente à versão LTS. O download começará automaticamente.
- **Execute o instalador:** Após o download, abra o arquivo .msi. A tela de boas-vindas aparecerá. Clique em "Next".
- **Aceite os termos de licença:** Marque a caixa de seleção para aceitar os termos e clique em "Next".
- **Escolha o local de instalação:** É recomendado manter o caminho padrão. Apenas clique em "Next".
- **Selecione os componentes:** Na tela de "Custom Setup", certifique-se de que a opção "Add to PATH" esteja selecionada. Isso é fundamental! Deixe todas as outras opções como estão e clique em "Next".
- **Instale ferramentas adicionais:** O instalador oferecerá a opção de instalar ferramentas necessárias para módulos nativos. Marque essa caixa de aceite. Isso evitará dores de cabeça no futuro ao trabalhar com pacotes mais complexos. Clique em "Next" e, em seguida, em "Install".
- **Aguarde a finalização:**  Durante o processo, uma ou mais janelas de terminal podem abrir para instalar as ferramentas adicionais. Aguarde até que tudo seja concluído. Após a finalização, é uma boa prática reiniciar o computador.

## Instalação do Node.js no Linux:
- **Abra o terminal:** Use o atalho Ctrl + Alt + T.
- **Adicione o repositório do Node.js**: Para garantir que você está baixando a versão LTS correta, execute o seguinte comando. Ele baixa e executa um script que configura o repositório oficial do NodeSource.
- **Instale o Node.js:** Agora que o repositório está configurado, use o gerenciador de pacotes apt para instalar o Node.js e o NPM.
- **E pronto!** O Node.js estará instalado e pronto para usar na sua máquina.

## Instalação do Node.js no macOS:
- **Acesse a página de download do Node.js:** Vá até o [site oficial do Node.js](https://nodejs.org/en/download/).
- **Baixe o instalador:** Clique no botão "macOS Installer (.pkg)" da versão LTS.
- **Execute o instalador:** Abra o arquivo .pkg baixado. Siga as instruções do assistente de instalação, clicando em "Continue", aceitando os termos de licença e clicando em "Install". Você precisará digitar sua senha de usuário para autorizar a instalação.
- **Finalize:** Ao final do processo, o instalador confirmará o sucesso. Você pode fechar a janela.

# Clonar repositório para obter todos os arquivos e pastas
Para poder ter acesso aos arquivos e pastas com os códigos funcionais é preciso clonar o repositório para agilizar esse processo. Diante disso, a ferramenta mais adequada para esse cenário é o Git.

## Instalação do Git no Windows:
- **Baixe o isntalador:** Acesse o site oficial do Git em https://git-scm.com/ e clique no link de download para o Windows.
- **Execute o instalador:** Após o download ser concluído, execute o instalador clicando duas vezes no arquivo baixado.
- **Configuração da Instalação:** Na tela de configuração, você pode optar por usar as configurações padrão ou personalizá-las de acordo com suas preferências. Clique em "Next" para prosseguir.
- **Seleção de Componentes:** Na próxima tela, deixe todas as opções selecionadas por padrão, a menos que você saiba que não precisará de algum componente específico. Clique em "Next" novamente.
Seleção do Editor de Texto: Escolha o editor de texto que você deseja associar com o Git. O Notepad++ é uma escolha popular para muitos desenvolvedores, mas você pode selecionar qualquer editor de sua preferência. Clique em "Next".
- **Definindo as Variáveis de Ambiente:** Na tela seguinte, mantenha a opção padrão selecionada para garantir que o Git seja acessível a partir da linha de comando. Clique em "Next".
Escolha de HTTPS ou SSH: Na próxima tela, escolha o método que você deseja usar para acessar repositórios remotos. Para a maioria dos usuários, a opção HTTPS é suficiente. Clique em "Next".
- **Configuração do Terminal:** Selecione o terminal que você prefere usar com o Git. O Git Bash é uma escolha comum para usuários do Windows. Clique em "Next".
Instalação: Por fim, clique em "Install" para iniciar a instalação do Git no seu sistema.
- **Conclusão:** Após a conclusão da instalação, você pode abrir o Git Bash ou qualquer outro terminal que você selecionou e começar a usar o Git. Use o comando git --version para verificar se o Git foi instalado corretamente e exibir a versão instalada.

## Instalação do Git no Linux:
- **Utilizando o Gerenciador de Pacotes:** No Linux, a instalação do Git pode variar dependendo da distribuição que você está usando. No Ubuntu e em distribuições relacionadas, você pode instalar o Git usando o gerenciador de pacotes apt. Abra um terminal e execute o seguinte comando:
```
sql

Copy code
sudo apt-get update sudo apt-get install git
```
- **Confirmação da Instalação:** Durante o processo de instalação, o gerenciador de pacotes solicitará sua confirmação. Digite "Y" e pressione Enter para confirmar a instalação.
- **Verificação da Instalação:** Após a instalação ser concluída, você pode verificar se o Git foi instalado corretamente digitando o seguinte comando no terminal:
```
css

Copy code
git --version
``` 
- **Configuração inicial:** Antes de começar a usar o Git, é recomendável configurar seu nome de usuário e endereço de e-mail. Você pode fazer isso executando os seguintes comandos no terminal, substituindo "Seu Nome" e "seu@email.com" pelas suas informações:
```
arduino

Copy code
git config --global user.name "Seu Nome" git config --global user.email "seu@email.com"
```
- **Conclusão:** Instalar o Git no Windows e Linux é um processo relativamente simples que abre as portas para uma colaboração eficaz no desenvolvimento de software. Com este guia passo a passo, você pode configurar rapidamente o Git em seu sistema operacional de escolha e começar a aproveitar todos os benefícios que essa poderosa ferramenta tem a oferecer.

## Clonar um repositório:

- **Acessar o Github:** Ao acessar o Github e em seguida acessar a página principal do repositório, você verá acima da lista de arquivos um botão verde com "<> Code". Clique nele.
- **Copie a URL do repositório:**
  - Para clonar o repositório usando HTTPS, em "HTTPS", clique no símbolo de copiar.
  - Para clonar o repositório usando uma chave SSH, incluindo um certificado emitido pela autoridade de certificação SSH da sua organização, clique em SSH e no símbolo de copiar.
  - Para clonar um repositório usando a GitHub CLI, clique em GitHub CLI e no símbolo de copiar.

- **Abra o Git Bash.**
- **Altere o diretório de trabalho atual para o local em que deseja ter o diretório clonado.**
- **Digite git clone e cole a URL já copiada:**
```
git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY
```

- **Pressione ENTER para criar seu clone local:**
```
$ git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY
> Cloning into `Spoon-Knife`...
> remote: Counting objects: 10, done.
> remote: Compressing objects: 100% (8/8), done.
> remove: Total 10 (delta 1), reused 10 (delta 1)
> Unpacking objects: 100% (10/10), done.
```
# Abrir a pasta no Visual Studio Code (VS Code)
Após clonar a pasta do projeto é necessário preparar o ambiente de desenvolvimento para executar a aplicação. Assim, é essencial ter um editor de código-fonte para poder realizar esse processo. Um editor de código-fonte amplamente conhecido devido à sua flexibilidade e fácil usabilidade é o Visual Studio Code, um editor de código-fonte leve, gratuito e de código aberto.

## Instalação do VS Code:
Caso você não tenha a ferramenta instalada e configurada na sua máquina, acesse o seguinte link: [Configurando o Visual Studio Code](https://code.visualstudio.com/docs/setup/setup-overview). 
Ele possui um tutorial completo com informações que vão desde à instalação da ferramenta à configuração dela, juntamente com informações adicionais disponibilizadas pelo próprio site do Visual Studio Code. 

## Ao acessar o VS Code:

- **Abra a pasta:** Abra a pasta clonada no VS Code.
- **Acesse o terminal:** Acesse o terminal do próprio VS Code pelo seguinte comando:
 ```
Ctrl + '
```
- **Instale as dependências:** Ao ter acessado o terminal, execute o seguinte comando para instalar todas as bibliotecas do projeto baseadas no arquivo package.json:
```
npm install 
```
- **Execute a aplicação:** Após a instalação, execute o seguinte comando de inicialização:
```
npm start
```
# Pronto!
Você terá acesso à aplicação API REST e poderá executá-la quando quiser no seu servidor. 

## Referências:

- [Como instalar o Node.js na sua máquina](
https://www.alura.com.br/artigos/como-instalar-node-js-windows-linux-macos?srsltid=AfmBOopkrIwDZLy5-MmIB8AE7PmDCQUIDkMi82meKo_q-nmC7sWHEKi5
)     
- [Como instalar o Git na sua máquina](
https://www.dio.me/articles/guia-passo-a-passo-como-instalar-o-git-no-windows-e-linux
)
- [Como clonar um repositório](https://docs.github.com/pt/repositories/creating-and-managing-repositories/cloning-a-repository)
