# f0rked's dotfiles

## Personal config

### AUR
```bash
$ sudo pacman -Syu wget git
$ sudo git clone https://aur.archlinux.org/yay-git.git /opt
$ sudo chown -R $USER:$USER /opt/yay-git
$ cd /opt/yay-git
$ makepkg -si
```

## Fira Code Font
```bash
$ wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete.ttf
$ cp Fira\ Code\ Regular\ Nerd\ Font\ Complete.ttf $HOME/.local/share/fonts/
fc-cache
```

### zsh/ohmysh/powerlevel10K
```bash
$ sudo pacman -Syu zsh curl
$ sudo usermod --shell /bin/zsh $USER
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
$ git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
$ cp zsh/.zshrc zsh/.alias.zsh  $HOME/
```

## terminator
```bash
$ sudo pacman -Syu terminator
$ cp terminator/config $HOME/.config/terminator/
```

## neovim
```bash
$ sudo pacman -Syu neovim
$ mkdir $HOME/.config/nvim
$ cp nvim/init.vim $HOME/.config/nvim
```

### vim-plug
```bash
$ sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

- start nvim, ignore errors, type :PlugInstall

## Arch Attack
To set up [Black Arch Repository](https://blackarch.org/downloads.html#install-repo)
```bash
# Run https://blackarch.org/strap.sh as root and follow the instructions.

$ curl -O https://blackarch.org/strap.sh
# Verify the SHA1 sum

$ echo 8bfe5a569ba7d3b055077a4e5ceada94119cccef strap.sh | sha1sum -c
# Set execute bit

$ chmod +x strap.sh
# Run strap.sh

$ sudo ./strap.sh
# Enable multilib following https://wiki.archlinux.org/index.php/Official_repositories#Enabling_multilib and run:

# Update and install some tools
$ sudo pacman -Syu android-apktool angr armitage burpsuite ffuf gitleaks gobuster pwntools python-minidump ghidra radare2 rz-cutter
```
