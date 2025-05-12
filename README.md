# mac-setup

## NodeJS

- Install [nvm](https://github.com/nvm-sh/nvm) for managing node.
- Run commands below to install node.

```sh
# Install latest long term support version of node.
nvm install --lts

# Check node installation.
node -v

# Install pnpm (not required / if using pnpm).
npm install -g pnpm

# Check pnpm install.
pnpm -v
```

## VSCode

- Install extensions.

```sh
cat vscode/extensions.txt | xargs -L1 code --install-extension
```

- Update settings by copying [settings.json](./vscode/settings.json) into VSCode settings.
