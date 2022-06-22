sudo apt upgrade -y
sudo apt update -y
sudo ln -fs /usr/share/zoneinfo/Asia/Seoul /etc/localtime
sudo apt install -y software-properties-common
sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt-add-repository -y ppa:fish-shell/release-3
sudo apt install -y fish git neovim tree curl net-tools language-pack-en
sudo update-locale
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install > install
fish install --noninteractive
mkdir -p ~/.config/nvim ~/.config/nvim/colors ~/.config/nvim/undodir
curl -fsSL https://raw.githubusercontent.com/lewohy/my-env/master/init.vim -o ~/.config/nvim/init.vim
vim +PlugInstall +qall
fish -c 'omf install agnoster'
echo 'set fish_color_normal FFFFFF'         >> ~/.config/fish/config.fish
echo 'set fish_color_command 569cd6'        >> ~/.config/fish/config.fish
echo 'set fish_color_keyword 569cd6'        >> ~/.config/fish/config.fish
echo 'set fish_color_quote CE9178'          >> ~/.config/fish/config.fish
echo 'set fish_color_error F44747'          >> ~/.config/fish/config.fish
echo 'set fish_color_param 46E096'          >> ~/.config/fish/config.fish
echo 'set fish_color_comment 6A9955'        >> ~/.config/fish/config.fish
echo 'set fish_color_operator C586C0'       >> ~/.config/fish/config.fish
echo 'set fish_color_escape d7ba7d'         >> ~/.config/fish/config.fish
echo 'set fish_color_autosuggestion 6B6B6B' >> ~/.config/fish/config.fish
