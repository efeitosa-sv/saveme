<a id="readme-top"></a>

# Informações do Git Flow do projeto

## Quando o projeto já foi publicado e existe um ambiente de produção

### Criar nova `feature`

* git checkout `master`
* git pull origin `master`
* git checkout -b `feature/{task-id}`
* -> Executar tarefa, **commits** devem ter o prefixo `{task-id} Comentário`
* -> Abrir **pull request** para branch `develop`

<p align="right">(<a href="#readme-top">voltar ao topo</a>)</p>

#### Caso houver conflitos entre `feature/` e `develop`

> Será necessário criar uma branch à partir da `develop` e mergear a branch da `feature/` resolvendo os conflitos para quea branch da `feature/` que vai para produção futuramente não seja afetada.

* git checkout `develop`
* git pull origin `develop`
* git checkout -b `feature/{task-id}-dev`
  * (Criar a branch a partir da `develop`)
* git merge `feature/{task-id}`
  * (Mergei a branch **principal** na `-dev`)
* -> Resolva os conflitos
* -> Abrir **pull request** da branch `feature/{task-id}-dev` para `develop`

<p align="right">(<a href="#readme-top">voltar ao topo</a>)</p>

#### Caso precisar atualizar a `feature/` após reprovação do QA

> Em caso de haver novas atualizações será necessário executar na branch da `feature/` que vai para `produção` e depois mergear novamente na branch `feature/{task-id}-dev` atualizada com as atualizações da `develop`.

* git checkout `feature/{task-id}`
  * (Branch **principal**)
* -> Realize os ajustes ou atualizações
* git checkout `develop`
  * (Verifique se há atualização na `develop`)
* git pull origin `develop`
* git checkout `feature/{task-id}-dev`
* git merge `develop`
  * (Atualize a `feature/{task-id}-dev` com as atualizações da `develop`)
* git merge `feature/{task-id}`
  * (Mergei as atualizações da branch **principal** na `feature/{task-id}-dev`)
* -> Resolver conflitos caso necessário.
* -> Abrir **pull request** da branch `feature/{task-id}-dev` para `develop`

<p align="right">(<a href="#readme-top">voltar ao topo</a>)</p>

### Deploy no ambiente de produção

> Para fazer o deploy em produção será necessário criar uma `release` com `tag` à partir da `master`.

* git checkout `master`
* git pull origin `master`
* git checkout -b `release/1.0.0`
* -> Realize o merge de todas `features` que deverão ir para `produção`
  * git merge `feature/{task-1}`
  * git merge `feature/{task-2}`
* -> Resolva os conflitos caso houver durante o merge das `features`
* -> Execute testes de todas as `features` mergeadas na `release`
* git tag -a `1.0.0` -m `Release 1.0.0`
* git tags `{version}`
* git push --tags
* -> Abrir **pull request** da `release` para `master`
* -> Criar e documentar `release` no **GitHub**

<p align="right">(<a href="#readme-top">voltar ao topo</a>)</p>

#### Modelo para criação de `releases` no **GitHub**

```md
## Big Changes
- Padronização geral nos componentes.
- Correções nos estilos dos componentes.

## What's Changed
* Release/1.1.5 by @studio-sv in https://github.com/studiovisual/base-theme/pull/176
* Release/1.1.5 by @studio-sv in https://github.com/studiovisual/base-theme/pull/178

**Full Changelog**: https://github.com/studiovisual/base-theme/compare/1.1.5...1.1.6
```

<p align="right">(<a href="#readme-top">voltar ao topo</a>)</p>

## Quando o projeto ainda está em desenvolvimento

### Criar uma nova `feature`

* git checkout `develop`
* git pull origin `develop`
* git checkout -b `feature/{task-id}`
* -> Abrir **pull request** para `develop`

<p align="right">(<a href="#readme-top">voltar ao topo</a>)</p>

#### Caso houver conflitos entre `feature/` e `develop`

> Será necessário puxar as atualizações da branch `develop` e mergear a `develop` direto na sua branch `feature/{task-id}`, depois abra abrir um pull request para `develop`.

* git checkout `develop`
* git pull origin `develop`
* git checkout `feature/{task-id}`
* git merge `develop`
* -> Resolver os conflitos
* -> Abrir **pull request** da branch `feature/{task-id}` para `develop`

<p align="right">(<a href="#readme-top">voltar ao topo</a>)</p>

### Sincronizar o ambiente de `Stage` com o de `Desenvolvimento`

> No `GitHub`, abra um **pull request** da branch `develop` para a branch `master`.

<p align="right">(<a href="#readme-top">voltar ao topo</a>)</p>
