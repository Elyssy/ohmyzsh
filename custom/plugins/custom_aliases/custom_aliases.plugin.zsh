# Add your own custom plugins in the custom/plugins directory. Plugins placed
# here will override ones with the same name in the main plugins directory.
# See: https://github.com/ohmyzsh/ohmyzsh/wiki/Customization#overriding-and-adding-plugins


# Handle $0 according to the standard:
# https://zdharma-continuum.github.io/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"


# Function to load aliases from files in a directory
load_aliases() {
    local _dir="$1"
    if [[ -d "$_dir" ]]; then
	for _file in "$_dir"/*.zsh; do
	    if [[ -f "$_file" ]]; then
		source "$_file"
            fi
        done
    else
        echo "Error: Directory not found - $_dir"
    fi
}

# Load aliases from 'aliases' dir
load_aliases "${0:h}/aliases"
