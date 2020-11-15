# for a pc (archlinux)

## installing aur
sudo pacman -Syu git
sudo git clone https://aur.archlinux.org/yay-git.git /opt
sudo chown -R massine:massine /opt/yay-git
cd /opt/yay-git
makepkg -si

## installing zsh/ohmysh/powerline10K (user:massine)
cd
sudo pacman -Syu zsh git curl
sudo usermod --shell /bin/zsh massine
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
cp .zshrc ~/.
cp .alias.zsh ~/.

## font used
git clone https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Regular/complete/ nerd-fonts/patched-fonts/FiraCode/Regular/complete/Fira\ Code\ Regular\ Nerd\ Font\ Complete.ttf 
cp Fira\ Code\ Regular\ Nerd\ Font\ Complete.ttf ~/.local/share/fonts/
fc-cache

## terminator
sudo pacman -Syu terminator
cp .config/terminator ~/.config/

## neovim
sudo pacman -Syu neovim
mkdir ~/.config/neovim
cp init.vim ~/.config/neovim

### vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

### CoC
sudo pacman -Syu nodejs npm
pip install neovim pynvim
npm install neovim
#### start nvim, ignore errors, type :PlugInstall
#### restart nvim, wait for CoC to install modules
#### restart nvim, everything sould be okay now, type :checkhealth to be sure
