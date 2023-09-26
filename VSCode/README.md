# VSCode

Configurations of VSCode are hierarchial.

Base settings are located at your home directory at `~/.config/Code/User/settings.json`.

> Note:
> On MacOS with Homebrew install `settings.json` located at `~/Library/Application\ Support/Code/User/`.

Any project can override them by adding file `.vscode/settings.json` into the project root directory.

Also `settings.json` file contain common IDE configurations and extensions configurations.

Apply configurations using:

```sh
$ mkdir -p          ~/.config/Code/User/
$ cp settings.json  ~/.config/Code/User/
```

and synchronize back for common configurations:

```sh
$ cp ~/.config/Code/User/settings.json .
```

## Generic

- [Git Graph](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph)
- [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)
- [REST Client](https://marketplace.visualstudio.com/items?itemName=humao.rest-client)

## Markup Languages

- [Markdown Preview Mermaid Support](https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid)
- [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml)
- [Even Better TOML](https://marketplace.visualstudio.com/items?itemName=tamasfe.even-better-toml)
- [Rainbow CSV](https://marketplace.visualstudio.com/items?itemName=mechatroner.rainbow-csv)
- [XML Tools](https://marketplace.visualstudio.com/items?itemName=DotJoshJohnson.xml)

### Docker

- [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
- [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

### Python

- [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
- [Python Environments](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-python-envs)
- [Black Formatter](https://marketplace.visualstudio.com/items?itemName=ms-python.black-formatter)
- [Pylint](https://marketplace.visualstudio.com/items?itemName=ms-python.pylint)
- [isort](https://marketplace.visualstudio.com/items?itemName=ms-python.isort)

### Java

- [Extension Pack for Java](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack)
- [Red Hat Dependency Analytics](https://marketplace.visualstudio.com/items?itemName=redhat.fabric8-analytics)
- [Checkstyle for Java](https://marketplace.visualstudio.com/items?itemName=shengchen.vscode-checkstyle)
- [Java PMD](https://marketplace.visualstudio.com/items?itemName=cracrayol.java-pmd)

## Rust

- [rust-analyzer](https://marketplace.visualstudio.com/items?itemName=rust-lang.rust-analyzer)

## Go

- [Go](https://marketplace.visualstudio.com/items?itemName=golang.go)

## Web

### JavaScript

- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)

### React

- [ES7+ React/Redux/React-Native snippets](https://marketplace.visualstudio.com/items?itemName=dsznajder.es7-react-js-snippets)

### Vue

- [Vue Language Features (Volar)](https://marketplace.visualstudio.com/items?itemName=Vue.volar)

## Misc

- [Russian - Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker-russian)
  (after install got to "Command Palette..." and select "Enable Russian Spell Checker Dictionary")
- [vscode-pdf](https://marketplace.visualstudio.com/items?itemName=tomoki1207.pdf)
