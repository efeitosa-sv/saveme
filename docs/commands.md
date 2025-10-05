<a id="readme-top"></a>

# Comandos Make

> ⚠️ **Importante:** Os comandos `make` que precisam ser passados parametros com `- ou --` devem conter `--` antes dos parametros. **Exemplos**:

* `make composer-project -- dump -o`
* `make yarn -- --version`
* `make wp -- transient delete --all`

## Construção

### make install

Instalar e subir os containers.

### make up

Subir os containers.

### make stop

Parar os containers.

### make destroy

Destroir os containers e volumes.

### make restart

Reiniciar todos os containers.

### make init

Personalizar as informações do arquivo `.env`, instalar e subir os containers.

<p align="right">(<a href="#readme-top">voltar ao topo</a>)</p>

## Banco de dados

### make backup

Faz um dump do banco de dados local compactado em `.sql.gz`.

> Se passar o parâmetro `make backup compact=zip`, o dump é compactado em `.sql.zip`.

### make restore

Restaura um dump que estiver na pasta `app` no formato `.sql.gz` ou `.sql.zip`.

> Se passar o parâmetro `make restore file="path/file.sql"` é possivel restaurar um dump nos formatos `.sql` | `.sql.zip` | `.sql.gz`.

<p align="right">(<a href="#readme-top">voltar ao topo</a>)</p>

## Ferramentas

### make composer-project

Permite executar comandos do `composer` na pasta raiz do projeto.

### make composer-theme

Permite executar comandos do `composer` na pasta raiz do tema.

### make yarn

Permite executar comandos `yarn` na pasta raiz do tema.

### make wp

Permite executar comandos do `wp-cli`.

### make lint

Executa os scripts de `lint` registrado no tema.

### make lint-fix

Executa os scripts de correção automática dos `lint` apenas para arquivos que formam modificados. (`git diff`).

### make lint-fixall

Executa os scripts de correção automática dos `lint` para todos os arquivos do tema.

### make yarn-dev

Ativa o servidor de desenvolvimento local com função de observar os arquivos modificados e atualizar em tempo real. (Útil para frontend).

### make public

Cria um tunel ssh que permite deixar seu projeto localhost com url pública.

<p align="right">(<a href="#readme-top">voltar ao topo</a>)</p>

## Úteis

### make help

Exibe no terminal a lista com todos os comandos make.

### make permissions

Coloca permissão `chmod -R 777 *` para todos os arquivos do projeto.

> Utiliza `git config core.fileMode false` para evitar que seja versionado as modificações de permissão nos arquivos.

### make clear

Limpa o `cache`, `transients` e redescobre os `packages` do `acorn`.

### make create-user

Cria ou atualiza um usuário com base nas váriaveis do arquivo `.env`.

> Útil após restaurar um banco de dados que você não conhece nenhum `user` e precisa acessar o `wp-admin`.

<p align="right">(<a href="#readme-top">voltar ao topo</a>)</p>
