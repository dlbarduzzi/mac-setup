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

## Homebrew

- Install [brew](https://brew.sh/) package manager.
- Install packages.

```sh
cat packages.txt | xargs -L1 brew install
```

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
