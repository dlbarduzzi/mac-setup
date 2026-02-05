# mac-init

## System Settings

See [system-settings](./settings/system.md) documentation.

## Google Chrome

Install Google Chrome browser.

## Raycast

Install [raycast](https://www.raycast.com/) by following installation steps.

Replace Spotlight with Raycast:
System Settings... > Keyboard > Keyboard Shortcuts… > Spotlight > Show Spotlight search > Uncheck

Open raycast settings and replace HotKey with `CMD Space`.

## Homebrew

Install [brew](https://brew.sh/) package manager.

Install packages.

```sh
cat packages/brew.txt | xargs -L1 brew install
```

## iTerm2

See [iterm2](./settings/iterm.md) documentation.

## Oh My ZSH

Install [ohmyzsh](https://ohmyz.sh/) by following installation steps.

- Replace contents from `~/.zshrc` with [.zshrc](./zsh/.zshrc)
- Create a custom `~/.profile` file so you can add any local custom configs

## GitHub

Create a new SSH key by following instructions from [github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

Here's a summary of commands.

```sh
# Generate ssh-rsa keys.
ssh-keygen -t ed25519 -C "you@email.com"

# Update public key permissions.
chmod 600 ~/.ssh/id_ed25519.pub

# Start ssh-agent in the background.
eval "$(ssh-agent -s)"
```

Update `~/.ssh/config` file to load keys for github.

```
Host github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
```

Add your private key to ssh-agent.

```sh
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
```

Copy public key to github by following instruction from [adding-a-new-ssh-key-to-your-github-account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account).

Set github user name and email in `~/.gitconfig` file.

```
[user]
	name = First Last
	email = you@email.com
```

## NodeJS

Install [nvm](https://github.com/nvm-sh/nvm) for managing node.

Install and manage node.

```sh
# Install latest long term support version of node.
nvm install --lts

# Check node installation.
node -v

# Install pnpm (not required).
npm install -g pnpm

# Check pnpm install.
pnpm -v
```

## VSCode

At this point vscode should have been installed. If not install it:

```sh
brew install --cask visual-studio-code --cask
```

Install dependencies.

```sh
brew install --cask font-caskaydia-cove-nerd-font
```

Install extensions.

```sh
cat vscode/extensions.txt | xargs -L1 code --install-extension
```

Update settings by copying [settings.json](./vscode/settings.json) into vscode settings.

**IMPORTANT** The VSCode theme is set to [monokai.pro](https://monokai.pro/). You must enter your license after the settings is applied.

## Python

Visit  [python-setup](../python-setup/README.md) for more details.
