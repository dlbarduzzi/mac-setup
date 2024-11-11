# MacOS Setup

## Docking Station

- Remove all unnacessary/not often used apps

## System Settings

Open `System Settings...` under Apple's icon and make the following changes:

- Desktop & Dock
  - Dock
    - Resize dock
    - Minimize windows into application icon : `uncheck`
    - Show indicators for open applications : `check`
    - Show suggestede and recent apps in Dock : `uncheck`
  - Widgets
    - Show Widgets
      - On Desktop : `uncheck`
- Keyboard
  - Key repeat rate : `set to fastest value`
  - Delay until repeat : `set to shortest value`
- Trackpag
  - Point & Click
    - Secondary click : `Click in Bottom Right Corder`
  - Scroll & Zoom
    - Natural scrolling: `uncheck`

## Finder

Open `Finder` in your docking station and make the following changes:

- Settings
  - General
    - Show these items on the Desktop : `uncheck everything`
    - New Finder windows show : `select home folder`
    - Open folders in tabs instead of new windows : `check`
  - Tags : `uncheck everything`
  - Sidebar
    - `uncheck folders you don't want to show`
    - `drag home folder to the top of the list (using finder window)`
  - Advanced
    - Show all filename extentions : `check`
    - Show warning before changing an extension : `uncheck`
- View
  - Set `as List`
  - Toggle `Show Status Bar`
  - Toggle `Show Path Bar`

## Google Chrome

Install and set `Google Chrome` as the default browser.

## Homebrew

Install `homebrew` by following the steps at [brew.sh](https://brew.sh/).

## Terminal

Install `iterm2` terminal.


```sh
brew install --cask iterm2
```

## Oh My Zsh

Install `ohmyzsh` by following the steps at [ohmyzsh](https://ohmyz.sh/).

### Git

1. Instal `git` cli.

```sh
brew install git
```

2. Set configs.

```sh
git config --global user.name "John Doe"
git config --global user.email "john.doe@email.com"
```

3. Setup SSH keys.

```sh
# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
ssh-keygen -t ed25519 -C "john.doe@email.com"
eval "$(ssh-agent -s)"
chmod 600 __PUBLIC_KEY__
```

4. Add the following content to your `~/.ssh/config` file:

```sh
touch ~/.ssh/config
Host github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
```

5. Add ssh key to use apple keychain.

```sh
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
```

6. Add public SSH key to Github by following steps in [adding-a-new-ssh-key-to-your-github-account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account).

```sh
pbcopy < ~/.ssh/id_ed25519.pub
```

**NOTE** if you get a prompt for `username` and `password` when running `git` commands, don't enter your password, but the token you have created some time in the past. Otherwise, create a new token.