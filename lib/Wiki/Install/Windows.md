# ✏️ Guia de Instalação no Windows

Este guia irá ajudá-lo a instalar a Yui no Windows nativo com comandos e downloads específicos, se estiver usando WSL, utilize o guia para Linux.

## 📝 Sumário

1. [🔎️ O que é Windows?](#-o-que-é-windows)
2. [✓ Pré-Requisitos](#-pré-requisitos)
3. [➕ Instalação adicional dos programas](#-instalação-adicional-dos-programas)
    - [🖥️ Windows 8 - 8.1 - 10 - 11](#%EF%B8%8F-windows-8---81---10---11)
    - [💧 Microsoft Visual C++ x86](#-microsoft-visual-c-x86)
    - [☕ NodeJS](#-nodejs)
    - [🐍 Python](#-python)
    - [🖨️ Tesseract-OCR](#%EF%B8%8F-tesseract-ocr)
    - [🎮 Gow](#-gow)
    - [📚 SQLite3](#-sqlite3)
    - [📱 Git Bash](#-git-bash)
4. [🛣️ Editar a PATH](#%EF%B8%8F-path)
5. [⚙️ Instalando a Yui](#%EF%B8%8F-instalando-a-Yui)
6. [📜 Configuração](#-configuração)
    - [👨‍💻 Método Nº1 - Usando CLI](#-método-nº1---usando-cli)
    - [💌 Método Nº2 - Usando um Editor](#-método-nº2---usando-um-editor)
    - [🌐 Método Nº3 - Usando o Terminal WEB da Yui](#-método-nº3---usando-o-terminal-web-da-Yui)
    - [🌟 Método Nº4 - Usando o Editor Oficial da Yui](#-método-nº4---usando-o-editor-oficial-da-Yui)
7. [🏁 Etapas Finais](#-etapas-finais)
8. [🙏 Finalizando](#-finalizando)
9. [🆙 Atualizando](#-atualizando)
	- [❌ Conflitos](#-conflitos)
	- [🔄 Recomeçando](#-recomeçando)
10. [❗ Dicas](#-dicas)

## 🔎 O que é Windows?

O Windows é um sistema operacional desenvolvido pela Microsoft. É uma plataforma amplamente utilizada em computadores pessoais e dispositivos compatíveis. O Windows fornece uma interface gráfica do usuário (GUI) que permite aos usuários interagir com o computador por meio de ícones, menus e janelas, tornando o uso do sistema operacional mais amigável e acessível para pessoas que não estão familiarizadas com comandos de linha de código.

## ✓ Pré-Requisitos

Antes de iniciar a instalação da Yui no Termux, certifique-se de atender aos seguintes Pré-Requisitos:

1. [Windows 8/8.1/10/11](https://www.microsoft.com/pt-br/software-download/)
2. [Microsoft Visual C++ x86](https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x86.exe)
3. [NodeJS](https://nodejs.org)
4. [Git](https://git-scm.com)
5. [Gow](https://github.com/bmatzelle/gow/releases)
6. [SQLite3](https://www.sqlite.org/index.html)
7. [Python >= 3.7](https://www.python.org/downloads/)
8. [Tesseract OCR](https://github.com/UB-Mannheim/tesseract/wiki)
9. 2GB de RAM | Recomendado: 4GB
10. Processador dual-core ou superior
11. 4GB de espaço livre | Recomendado: 8GB

## ➕ Instalação adicional dos programas

Baixe os executáveis primeiros e então volte aqui!

- Dica: Se desejar pular a instalação de um programa, você pode simplesmente remover os códigos relacionados a ele no sistema de verificação presente no arquivo [Checker.js](https://github.com/pyon/yui/blob/main/lib/Initialize/checker.js).
- Mas tenha em mente que, se fizer isso, **NÃO HAVERÁ SUPORTE PARA ERROS NA SUA INSTALAÇÃO!**

### 🖥️ Windows 8 - 8.1 - 10 - 11

....dah.

### 💧 Microsoft Visual C++ x86

Apenas instale seguindo as opções padrões, nada mais é requisitado.

### ☕ NodeJS

A instalação em si é simples, apenas avance para instalar, mas se certifique de ativar a instalação da `Tools for Native Modules`.

Quando finalizar, um terminal será aberto, aperte enter se ele pedir e deixe a instalação ocorrer, pode demorar bastante tempo.

### 🐍 Python

Normalmente, se instalado conforme dito acima, o NodeJS instalará o Python para você, mas se não for o caso, Python é simples de instalar, você só precisa ativar a opção `Add Python to PATH` e prosseguir com a instalação em customize.

Selecione também, sendo opcional, mas recomendado, a opção `debbugging symbols`, `Install for all users`, `debug binaries` e `precompile standard library`, termine sua instalação agora.

### 🖨️ Tesseract-OCR

Após baixar o arquivo exe da instalação, selecione as seguintes opções:

1. Install for anyone...

2. Aperte o botão '+' em `Additional Language Data` e selecione a opção `Math` e seu idioma, se for brasileiro, use `Portuguese`, você também pode selecionar outros, caso haja estrangeiros em seu grupo.

3. Finalize a instalação e siga a etapa no final do guia para configurar sua PATH.

### 🎮 Gow

Apenas instale o Gow com suas opções padrões e então use a etapa no final do guia para configurar a PATH.

### 📚 SQLite3

Após baixar o arquivo `sqlite-tools-win32-x86-3430200.zip` para Windows, você pode instalar em uma pasta e seguir o final desse guia para editar a PATH, mas como não sei qual lugar você instalaria, esse guia utilizará uma forma universal.

1. Extraia os 3 arquivos dentro da pasta do NodeJS, Python, Tesseract-OCR, Gow, Git Bash ou até mesmo dentro pasta `windows` ou `system32`, esses dois são pessimas praticas, mas funcionam perfeitamente.

2. Abra um novo terminal e digite `sqlite3 --help`, se você receber uma lista de comandos, você está pronto.

### 📱 Git Bash

Após instalar, siga a etapa no final do guia para configurar sua PATH.
Se certifique de usar `Git Bash` para abrir a Yui! O Windows 10 e 11 contém problemas ao executar `bash` no `PowerShell` ou `CMD`!

1. Ao iniciar o instalador do `Git Bash`, ative a opção `Add a Git Bash Profile` e `Scalar`, prossiga.

2. Na aba de escolher o editor de texto, escolha um de sua preferência, recomendo o uso do `Visual Studio Code` por permitir o uso do `Eslint`.
	- Se você não tiver, aperte no texto em azul para ir até o download.

3. Escolha as opções:
	- Let Git decide
	- Git from the commandline and also from 3rd-party-software
	- Use bundled OpenSSH
	- Use the OpenSSL library
	- Checkout as-is, commit Unix-style line endings
	- Use MinTTY
	- Default
	- Git Credential Manager
	- Enable file system caching
	- Enable symbolic links
	- Enable experimental support for pseudo consoles
	- Enable experimental built-in file system monitor
	
4. Termine a instalação.

### 🛣️ PATH

Mude o `InsiraLocal` para o lugar relativo dos programas, os locais padrões, se tiver usado a instalação padrão, são:
Gow: `C:\Program Files (x86)\Gow\bin`
Bash: `C:\Program Files\Git\bin`
Tesseract: `C:\Program Files\Tesseract-OCR`

Lembre-se de fazer isso duas vezes, uma para o gow e outra para bash, o bash deve estar acima do gow na lista, se você inserir o gow acima do bash, ocorrerá erros ao usar o comando `bash`.

1. Aperte a tecla `Win + S` ou abra o menu iniciar e procure por `path`.

2. Selecione a opção `Editar variáveis de ambiente do sistema`, isso abrirá uma janela, nela aperte em `Variáveis de Ambiente`.

3. Em `variáveis do sistema`, clique em `Path` e aperte em `Novo`.

4. Isso abrirá uma linha vazia esperando por algo, nela insira `InsiraLocal` e aperte enter.

5. (GIT) Mova a linha até a primeira posição da lista.
	- Se você estiver usando WSL, isso substituirá o comando bash do seu linux WSL pelo bash do Git Bash, se quiser evitar isso, crie uma copia do `bash.exe` e renomeie para `basho.exe`, deixando a linha na posição em que ela foi criada.
	- A Yui continuará usando `bash` como comando principal, se funcionar, você pode pular a etapa abaixo.
	- Se preciso, abra a Yui e troque todos os comandos que chamam o `bash` por `basho`, por exemplo:
	- Antigo: `Indexer('bash').bash('BASH comando')`
	- Novo: `Indexer('bash').bash('basho comando')`
	- Em breve uma função para automatizar isso pode ser construída.
	
6. Repita o processo 3 e 4 para o Gow e Tesseract-OCR.

7. Feche e abra o terminal para aplicar as alterações, digite `bash` ou `basho` e também `zip --help`, se entrar no sistema do Git Bash e exibir um menu de ajuda para o comando `zip`, você está pronto, se não, algo errado ocorreu, procure o suporte.

## ⚙️ Instalando a Yui

Uma vez que você tenha instalado todos os requisitos, é hora de ir para o download da Yui, primeiramente, na sua área de trabalho, clique com botão direito e selecione `Open Git Bash Here`e digite ou copie e cole os comandos para continuar.

```bash
# Baixa a Yui
git clone https://github.com/pyon/yui.git

# Entra na pasta da Yui
cd yui

# Inicia o download dos arquivos adicionais dela
npm i

# Desatualiza o sharp para poder usar canvas
# IGNORE o monte de WARN aparecendo no terminal após finalizar, não são BUGs
npm i sharp@0.30.7

# Inicia (leia o resto do tutorial primeiro)
npm start
```

## 📜 Configuração

Uma vez que você tenha instalado tudo, feito todos os procedimentos acima, siga os passos abaixo para configurar seu número como dono da Yui e mudar a senha.

### 👨‍💻 Método Nº1 - Usando CLI

1. Abra a pasta da Yui e clique com botão direito lá, selecione `Open Git Bash Here`.

2. Digite `sed -i 's/MyNumber/SeuNúmero/g' lib/Databases/Configurations/config.json`.
	- Você deve trocar 'SeuNúmero' pelo seu número no formato: DDI+DDD+Número.
	- O número deve ser igual ao mostrado no WhatsApp, por exemplo: 's/MyNumber/55119987654321/g'
	- Se você quiser inserir outro número manualmente, deve usar o método 2 ou 3 a partir de agora.

2. Para mudar a senha padrão, digite: `sed -i 's/yuiBOT@Root#123/NovaPassword/g' lib/Databases/Configurations/config.json`.

3. Para ativar a conexão por pairing code, digite: `cd && cd yui && sed -i 's/"pairingCode": { "value": false,/"pairingCode": { "value": true,/g' lib/Databases/Configurations/config.json`.

### 💌 Método Nº2 - Usando um Editor

1. Vá até a pasta da Yui e acesse as pastas lib, Databases, Configurations.

2. Abra o arquivo config.json em um editor de sua preferência.

3. Vá até onde possui `@s.whatsapp.net`, se tiver inserido um número antes, você verá ele ali.

4. Vá até `MyNumber` e apague-o, digite seu número no lugar.
	- O número deve ser igual ao mostrado no WhatsApp, por exemplo: '55119987654321'

5. Se já tiver editado antes, e quiser adicionar outro, vá até o final da linha, onde está `]` e apague-o, então adicione `, "outroNúmero@s.whatsapp.net"]`.
	- Troque 'outroNúmero' pelo número em questão, no mesmo jeito da dica Nº3.

6. Vá até `yuiBOT@Root#123` e apague-o, digite uma nova senha no lugar.

7. Se desejar conectar por pairing code, vá até `pairingCode`, na frente de `value:` haverá `false`, troque-o por `true`.

8. Quando tiver terminado, salve e saia.

### 🌐 Método Nº3 - Usando o Terminal WEB da Yui

1. Inicie a Yui, você receberá na tela um endereço de IP e porta que é acessivel somente pela sua rede.
	- Se o IP mostrado for interno, você deve usar o IP do seu PC, ele pode ser encontrado acessando as configurações de WiFi do aparelho ou usando o comando `ipconfig`.

2. Abra um navegador e digite o endereço de IP e a porta, ficando como `192.168.0.123:45678`.
	- Pode aparecer um erro dizendo que a página não é segura, mas não se preocupe, isso é por conta da Yui rastrear quem ousar acessar essa página, apenas clique em 'Aceite o risco' e prossiga.
	- O rastreamento será mostrado no terminal, de forma que, se algum invasor tentar acessar caso você modifique para IP externo, você possa rastrea-lo.

3. Insira o nome de usuario e senha mostrados no terminal, isso pode ser configurado apartir do arquivo `utils.json` da pasta `Terminal`, mas não é esse o foco desse guia.

4. Uma vez conectado, você estará em uma página com um terminal linux diretamente no navegador, não se confunda, ele é extremamente poderoso e você NÃO DEVE brincar aqui.

5. Digite `config.owner.value.push('seuNumero@s.whatsapp.net');`, se o terminal exibir um 2, você estará pronto para seguir, se quiser ter certeza, digite `config.owner.value`, então seu número deve aparecer.

6. Digite `config.secretKey.value = 'NovaSenha'`, se o terminal retornar a mesma, você estará pronto, se quiser ter certeza, digite `config.secretKey.value`, sua nova senha deve aparecer.

7. Para salvar eternamente digite `fs.writeFileSync(path.normalize(yuiPath+'/lib/Databases/Configurations/config.json'), JSON.stringify(config, null, 4));`, isso não deve printar nada na tela, mas se algo aparecer e não for um erro, você pode continuar.

8. Para ter certeza de que deu certo, você pode digitar `JSON.parse(fs.readFileSync(path.normalize(yuiPath+'/lib/Databases/Configurations/config.json')))?.owner?.value;` e se o número estiver lá, tudo ocorreu bem e seu número já está salvo.

9. Feche o navegador, volte ao Termux e continue o guia.
	- Se quiser executar Python, Bash, Node ou outras tarefas pelo Terminal WEB, você pode! Siga esse exemplo: `Indexer('bash').bash('seu comando').value;`.
	- Exemplo: `Indexer('bash').bash('python -c "print("123")"').value;`
	- Tenha em mente que processos demorados, como `npm i`, podem causar problemas ou levar uma eternidade para funcionar, só use o que você entender.
	- Você também pode abrir jogos com isso, por exemplo, para abrir `GTA V` pela Steam: `Indexer('bash').bash('start steam://rungameid/271590').value;`
	- Basicamente, tudo pode ser feito neste terminal, desde coisinhas simples de JavaScript a coisas avançadas, como instalações e demais, tanto na rede local, como em outro país.
    
### 🌟 Método Nº4 - Usando o Editor Oficial da Yui
1. Digite `cd && cd yui && python lib/Scripts/jsonexplorer.py`
    - Você também pode abrir isso por meio da opção 16 no `npm run toolbox`.

2. Aperte carregar e localize o arquivo `config.json`.

3. Vá em `owner` e aperte no botão de expandir, vá então para `value` e aperte em `0`, troque `MyNumber` por seu número.
    - O número deve ser igual ao mostrado no WhatsApp, por exemplo: '55119987654321'
    - Para inserir outro número, vá em `value` que está acima do `0` e aperte com botão direito do mouse, selecione `Add to Array`.
    - Na janela de adicionar em array, digite `outroNúmero@s.whatsapp.net`, como por exemplo: `123@s.whatsapp.net`

4. Aperte em `Save (Memory)` para guardar o valor enquanto estiver indo editar outros.
    - Se você não apertar nesse botão, você perderá o valor que inseriu.

5. Vá até `secretKey`, expanda como fez acima, aperte em `value`, troque `yuiBOT@Root#123` por uma nova senha SEGURA.
    - Essa senha é o que determina se alguém sem dono pode executar comandos de dono.
    - Você deve manter as aspas no inicio e fim da senha.
    - Recomendação segura: Um misto de letras maiusculas, minusculas, números e simbolos, 8 digitos.
    - Lembrando que isso é uma recomendação, se você confia nos usuários, pode usar qualquer senha.

6. Se desejar conectar por pairing code, vá até `pairingCode`, aperte em `value`, troque `false` por `true`.
    - Lembre de apertar em `Save (Memory)` a cada edição finalizada.

7. Quando tiver terminado, aperte em `Salvar (Arquivo)` e pronto.

## 🏁 Etapas finais

Parabéns por chegar até aqui! Agora só resta iniciar e aproveitar, para isso, siga os próximos passsos:

1. Vá na pasta da Yui e abra o terminal Git Bash e então digite `npm start` para iniciar.

2. Você receberá um QR code ou código de pareamento na tela, abra seu WhatsApp rapidamente e utilize-o.

## 🆙 Atualizando

Não atualize com isso se fez a instalação no modo `Universal`.
Caso você queira atualizar sua Yui **mantendo as suas alterações**, acesse a pasta dela com o **terminal** e siga as etapas abaixo, se não quiser salvar alterações, pule a etapa 1 e 3.

1. Execute `git stash` para guardar as alterações locais em um stash temporariamente.

- O stash no Git é uma área temporária para armazenar alterações locais quando você precisa mudar de branch ou aplicar atualizações do repositório remoto sem fazer um commit, os comandos básicos são:

> `git stash`: Armazena as alterações.  
> `git stash list`: Lista as alterações armazenadas.  
> `git stash apply`: Devolve as alterações salvas no stash.  
> `git stash drop`: Remove o stash mais recente.  

2. Execute o `git pull` para atualizar seu repositório local com as alterações do repositório remoto.

3. Execute `git stash pop` para reaplicar suas alterações do stash, note que este comando aplica o stash mais recente e, em seguida, o descarta automaticamente.

### ❌ Conflitos

Se o git apontou conflitos entre suas alterações locais e as alterações do `git pull`, você infelizmente precisará resolver esses conflitos manualmente, sendo mais fácil recomeçar do zero e editar novamente.

### 🔄 Recomeçando

**Aviso:** Este método irá descartar todas as alterações locais, certifique-se de ter backup ou esteja ciente de que essas alterações serão perdidas.

Se você deseja descartar completamente as alterações locais, incluindo aquelas no arquivo de configuração, e voltar para a atualização mais recente do repositório remoto, você pode usar esses passos para isso.

1. Descarte as alterações locais:
```bash
git reset --hard HEAD # Isso irá redefinir o seu branch para o commit mais recente, descartando todas as alterações locais.
git clean -fdx # Isso remove todos os arquivos não rastreados, incluindo aqueles que foram gerados localmente.
```

2. Obtenha a atualização executando `git pull`, feito isso, sua Yui deverá estar atualizada, igual ao repositório remoto.

3. Execute `npm i` para reinstalar ou atualizar os módulos da Yui.

4. Para finalizar, faça a [Configuração](#-configuração) e execute `npm start` para iniciar.

## 🙏 Finalizando

Parabéns por conseguir a instalação, agora você pode aproveitar a Yui em seu total controle!

## ❗ Dicas

- Tome cuidado pois Yui tem a capacidade de rodar comandos de terminal linux no WhatsApp, não dê permissão de dono a qualquer um, eles podem causar danos a você.
- Use `npm run toolbox` para facilitar seu trabalho, esse comando executará um menu de ferramentas super completo.
