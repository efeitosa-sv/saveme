<a id="readme-top"></a>

# Informações sobre plugins

## Adicionando novos plugins

### Plugin versionado no repositório

Adicione o plugin `.zip` na pasta `app/packages`

Adicione o plugin no `composer.json`

```json
{
  "repositories": [
    {
      "type": "package",
      "package": {
        "name": "wp-plugins/perfmatters",
        "type": "wordpress-plugin",
        "version": "2.3.6",
        "dist": {
          "url": "./packages/wp-plugins/perfmatters.2.3.6.zip",
          "type": "zip"
        }
      }
    },
  ]
}
```

```json
{
  "extra": {
    "installer-paths": {
      "./wp-content/plugins/{$name}/": [
        "type:wordpress-plugin"
      ],
    }
  },
}
```

```json
{
  "require": {
    "wp-plugins/perfmatters": "2.3.6",
  }
}
```

<p align="right">(<a href="#readme-top">voltar ao topo</a>)</p>

### Plugin do GitHub

Utilize o **type** `vcs` ao ínves de `git` para evitar problemas no `workflow`

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/studiovisual/your_plugin.git"
    }
  ],
}
```

```json
{
  "require": {
    "studiovisual/your_plugin": "dev-main"
  }
}
```

<p align="right">(<a href="#readme-top">voltar ao topo</a>)</p>

### Plugin do Packagist

```json
{
  "repositories": [
    {
      "type": "composer",
      "url": "https://wpackagist.org"
    },
  ]
}
```

```json
{
  "require": {
    "wpackagist-plugin/ewww-image-optimizer": "^7",
  }
}
```

<p align="right">(<a href="#readme-top">voltar ao topo</a>)</p>
