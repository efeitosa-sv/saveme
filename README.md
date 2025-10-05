<a id="readme-top"></a>

<!-- PROJECT LOGO -->
<br/>
<div align="center">
    <img src="assets/images/logo.png" alt="Logo" width="100" height="100" title="Finance App" aria-label="Logo Projeto Financeiro">
</div>

<!-- ABOUT THE INFRA -->
## Sobre a infra

Infraestrutura base para o projeto de organização financeira pessoal, pré-configurada com React, Node.js, PostgreSQL e Docker Compose. Desenvolvida para facilitar o onboarding, padronizar comandos e crescer com futuras integrações como Open Banking.

### Principais funcionalidades

* Configurações centralizadas no arquivo `.env`.
* Comandos `make` para build e execução dos containers via Docker.
* Versionamento de dependências do frontend/backend por `package.json` e `Dockerfile`.
* Workflows automáticos para inicialização, build, restore e shutdown.
* Template de documentação para pull requests.
* Layout moderno e intuitivo para controle financeiro completo.

<p align="right">(<a href="#readme-top">voltar ao topo</a>)</p>

> Antes de iniciar a aplicação, assegure-se de ter todos os pré-requisitos instalados.

### Pré-requisitos da infra

Versões mínimas recomendadas:

* [Docker](https://docs.docker.com/engine/install/) >= 24.0.2
* [Docker Compose](https://docs.docker.com/compose/install) >= 2.19.1
* [GNU Make](https://www.incredibuild.com/integrations/gnu-make) >= 4.3

<p align="right">(<a href="#readme-top">voltar ao topo</a>)</p>

<!-- ABOUT THE APP -->
## Sobre a aplicação

Aplicação completa de gestão financeira pessoal, com dashboard inovador para visualização de despesas, receitas, saldo, valor a pagar e categorias (fixas/variáveis/pagas).

### Pré-requisitos do frontend/backend

* [NODE](https://nodejs.org/) >= 20.0
* [YARN](https://yarnpkg.com/) >= 4.0 (opcional)
* [PostgreSQL](https://www.postgresql.org/) >= 15.0

> Não é necessário instalar essas dependências localmente se utilizar Docker e os comandos make.

<p align="right">(<a href="#readme-top">voltar ao topo</a>)</p>

<!-- USAGE -->
## Utilizando

### Configurando o arquivo .env

Crie o arquivo `.env` com base no `.env.example` usando `make check-env` ou copie manualmente.

* `DB_HOST` -> Host do banco de dados.
* `DB_USER` -> Usuário do banco.
* `DB_PASS` -> Senha do banco.
* `REACT_APP_API_URL` -> URL da API backend.

<p align="right">(<a href="#readme-top">voltar ao topo</a>)</p>

### Instalando

Execute para instalar dependências (primeira vez):

```sh
  make install
  ```


Aguarde e acesse <http://localhost:3000> (frontend) e <http://localhost:5000> (backend).

### Inicializando

Para subir o ambiente novamente:

```sh
  make up
  ```


Os containers serão executados em background. Frontend em <http://localhost:3000>.

### Finalizando

Para parar todos os containers:

```sh
  make stop
  ```

### Outros comandos

Use `make help` para ver todos os comandos disponíveis.

<p align="right">(<a href="#readme-top">voltar ao topo</a>)</p>

<!-- CONTRIBUTING -->
## Contribuindo

Para contribuir:

1. Crie sua branch a partir da branch principal (`main`).
   - Exemplo: `git checkout -b feature/fin-99`
2. Faça commits sempre com prefixo da demanda e no imperativo.
   - Exemplo: `git commit -m 'fin-99 Função de cálculo de saldo'`
3. Abra um pull request para a branch principal, usando o prefixo da demanda.
   - Exemplo: `fin-99 Título do PR`
4. Abra um pull request no padrão abaixo:

```sh
### :pencil: [Link para tarefa no trello]
### Descrição
Detalhe brevemente o que este PR adiciona, altera ou corrige no projeto.

### Anexos
Inclua capturas de tela com diferentes resoluções, links ou arquivos que auxiliem na revisão deste PR (se necessário).
```

<p align="right">(<a href="#readme-top">voltar ao topo</a>)</p>

<!-- DETAILED DOCUMENTATION -->
## Documentação detalhada

### [Layouts e wireframes](./docs/layout.md)
### [Comandos Make](./docs/commands.md)
### [Git Flow do projeto](./docs/git-flow.md)

<p align="right">(<a href="#readme-top">voltar ao topo</a>)</p>
