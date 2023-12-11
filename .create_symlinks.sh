CONFIG_DIR="/home/dojanl/configs/"

create_symlink(){
    local src=$1
    local dest=$2

    if [ -f "$dest" ] || [ -d "$dest" ]; then
        echo "Backing up $dest to $dest.backup"
        mv "$dest" "${dest}.backup"
    fi

    echo "creating symlink for $src"
    ln -s "$src" "$dest"
}

create_symlink "${CONFIG_DIR}/.vimrc" "$HOME/.vimrc"

create_symlink "${CONFIG_DIR}/.tmux.conf" "$HOME/.tmux.conf"

create_symlink "${CONFIG_DIR}fish_prompt.fish" "$HOME/.config/fish/functions/fish_prompt.fish"

echo "Symlinks created successfully"
