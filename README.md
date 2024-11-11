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

Install font dependency.

```sh
brew search nerd-font
brew search nerd-font | grep caskaydia 
brew install font-caskaydia-cove-nerd-font
```

Set Window arrangement when opening terminal:

- Open "Window" on very top bar
    - click on "Save window arrangement"
    - open "Arrangements" in iterm profile
    - choose arrangement you have just saved
    - instructions below will show how to use this setting

Make the following settings changes:

- Settings
  - General
    - Startup
      - Window restoration policy : `Open Default Window Arrangement`
      - Uncheck everything else
    - Closing
      - Quit when all windows are closed : `check`
      - Uncheck everything else
  - Appearance
    - General
      - Theme : `Minimal`
    - Windows
      - Hide scrollbars : `check`
      - Show line under title bar when the tab bar is not visible : `check`
      - Uncheck everything else
    - Tabs
      - Show tab bar even when there is only one tab : `check`
      - Show tab numbers : `uncheck`
      - Stretch tabs to fill bar : `uncheck`
  - Profiles
    - General
      - Window Directory : `Reuse previous session's directory`
    - Colors
      - Use different colors for light mode and dark mode : `uncheck`
      - Color Presets
        - Download `cyberdream.itermcolors` file from this repo and set/import as your color theme
      - Minimum Contrast
        - If planning on using transparent background, might need to play with this value i.e. `50`
    - Text
      - Font : `CaskaydiaCove Nerd Font Mono`
      - Font weight : `Regular`
      - Font size: `17`
      - Line height (n/n) : `127`
    - Window
      - Add background image
      - Blending : `20 (play with value based on backgound image)`
      - Use transparency : `check`
    - Terminal
      - Show mark indicators : `uncheck`
    - Keys
      - Key Mappings
        - Presets... : `Natural text editing`
          - This allows to jump words in cli using `CMD`
          - You can still go to next/prev tab using `CMD + Shift + [`

Prevent login message every time you open a terminal by creating a `.hushlogin` file at your home dir:

```sh
touch ~/.hushlogin
```

# zsh

Install plugins.

```sh
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
```

Activate plugins by adding the following to `~/.zshrc` file:

```sh
# Activate syntax-highlighting.
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Active autosuggestions.
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
```

## Oh My Zsh

1. Install `ohmyzsh` by following the steps at [ohmyzsh](https://ohmyz.sh/).

2. Create the following file theme under `~/.oh-my-zsh/themes/dylan.zsh-theme` file:

```sh
ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='
%{$fg[green]%}%~%{$reset_color%}$(git_prompt_info) %{$reset_color%}
$ '%
```

3. Set the following lines in your `~/.zshrc` file:

```sh
# Set name of the theme to load.
ZSH_THEME="dylan"
```

4. Source file `source ~/.zshrc`.

##   Git

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

### VSCode

Install `vscode` text editor.

```sh
brew install --cask visual-studio-code
```

Add `code` command to your path by clicking `Cmd + Shift + p` and type `shell command: install code command to path`.

Set the minimal settings.

```json
{
    "editor.fontSize": 16,
    "editor.lineHeight": 1.7,
    "editor.fontFamily": "'CaskaydiaCove Nerd Font', Menlo, Monaco, 'Courier New', monospace",
}
```
