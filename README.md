# mac-setup

## System Settings

- Desktop & Dock
  - Dock
    - Size
      - Adjust size to your liking
    - Minimize windows into application icon
      - Checked
    - Animate opening applications
      - Unchecked
    - Show indicators for open applications
      - Checked
    - Show suggested and recent apps in Dock
      - Unchecked
  - Desktop & State Manager
    - Click wallpaper to reveal desktop
      - Only in State Manager
  - Also remove as many apps as you want
- Displays
  - True Tone `only visible when connected to an external monitor, better color`
    - Unchecked
- Keyboard
  - Key repeat rate
    - Set to fastest value
  - Delay until repeat
    - Set to shortest value
- Trackpad
  - Point & Click
    - Secondary Click
      - Click in Bottom Right Corner
  - Scroll & Zoom
    - Natural scrolling
      - Unchecked

## Finder

- Settings…
  - General
    - Show these items on the desktop
      - Uncheck all
    - New Finder windows show
      - Set to your home folder
    - Open folders in tabs instead of new windows
      - Checked
  - Tags
    - Uncheck all
  - Sidebar
    - Check home folder
    - Uncheck what you don’t want to see
    - Rearrange what shows at the top in Finder window
  - Advanced
    - Show all filename extensions
      - Checked
    - Show warning before changing an extension
      - Unchecked
- View
    - as List
      - Checked
    - Show Path Bar
    - Show Status Bar

## Google Chrome

- Install Google Chrome browser.

## Raycast

- Install [raycast](https://www.raycast.com/) by following prompt/installation steps.
- Replace Spotlight with Raycast
  - Open mac `System Settings...`
    - Keyboard
      - Keyboard Shortcuts…
        - Spotlight
          - Show Spotlight search
            - Unchecked
- Open raycast `Settings`
  - Replace HotKey with “CMD Space”

## Homebrew

- Install [brew](https://brew.sh/) package manager.
- Install packages.

```sh
cat packages.txt | xargs -L1 brew install
```

## iTerm2 Configs

iTerm2 should already be installed as part of `brew` packages installation.

- Settings
  - General
    - Startup
      - Window restoration policy
        - Open Default Window Arrangement
    - Closing
      - Quit when all windows are closed
        - Checked
      - Confirm closing multiple sessions
        - Unchecked
      - Confirm "Quit iterm2"
        - Unchecked
      - Disable all confirmations on system shutdown…
        - Unchecked
    - Window
      - Adjust window when changing font size
        - Unchecked
  - Appearance
    - General
      - Theme
        - Minimal
    - Windows
      - Title Bar
        - Show window number in title bar
          - Unchecked
        - Aesthetics
          - Hide scrollbars
            - Checked
  - Profiles
    - General
      - Initial directory
        - Reuse previous session’s directory
    - Text
      - Text Rendering
        - Draw bold text in bold font
          - Unchecked
      - Font
        - CaskaydiaCove Nerd Font Mono
        - Regular
        - Size 18
        - Line height 116
    - Terminal
      - Shell Integration
        - Show mark indicators
          - Unchecked
    - Keys
      - Key Bindings
        - Presets…
          - Natural Text Editing (if prompt to delete previous ones, select yes)
- Window `top bar`
  - Arrangements
    - Save Window Arrangement `adjust window size first`

## Oh My ZSH

- Install [ohmyzsh](https://ohmyz.sh/).
- Clean up ~/.zshrc. Initial example content can be found at [.zshrc](./zsh/.zshrc).

## GitHub

- Create new ssh-key by following commands below or instructions from [github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

```sh
ssh-keygen -t ed25519 -C "you@email.com"
eval "$(ssh-agent -s)"
chmod 600 __PUBLIC_KEY__
```

- Add github ssh config to `~/.ssh/config` file.

```
Host github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
```

- Add private key to ssh-agent.

```sh
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
```

- Copy public key to github by following instruction from [adding-a-new-ssh-key-to-your-github-account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account).


- Set github user name and email in `~/.gitconfig` file.

```
[user]
	name = John Doe 
	email = john.doe@email.com
```

- When running for the first time you might need to use HTTPS to connect to github with a token (not a password) to verify ssh host. Or you can run `ssh-keyscan -H github.com >> ~/.ssh/known_hosts` to allow connectivity.

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
