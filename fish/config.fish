# Path to Oh My Fish install.
set -gx OMF_PATH "/home/crank/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/home/crank/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

set -x EDITOR vim
set PATH ~/.local/bin/ $PATH
