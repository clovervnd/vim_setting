#!/bin/bash

set -e  # Exit on error

# Color output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo_info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

echo_warn() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

echo_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Detect OS
detect_os() {
    case "$(uname -s)" in
        Linux*)
            if [ -f /etc/os-release ]; then
                . /etc/os-release
                OS="Linux"
                DISTRO="$ID"
            else
                OS="Linux"
                DISTRO="unknown"
            fi
            ;;
        Darwin*)
            OS="macOS"
            DISTRO="darwin"
            ;;
        *)
            OS="Unknown"
            DISTRO="unknown"
            ;;
    esac
}

# Install dependencies based on OS
install_dependencies() {
    echo_info "Detected OS: $OS ($DISTRO)"

    if [[ "$OS" == "Linux" ]]; then
        case "$DISTRO" in
            ubuntu|debian)
                echo_info "Installing dependencies for Ubuntu/Debian..."
                sudo add-apt-repository -y ppa:jonathonf/vim || echo_warn "Could not add vim PPA, using default repository"
                sudo apt-get update
                sudo apt-get install -y vim ctags cscope build-essential cmake python3-dev silversearcher-ag figlet
                ;;
            fedora|rhel|centos)
                echo_info "Installing dependencies for Fedora/RHEL/CentOS..."
                sudo dnf install -y vim ctags cscope gcc gcc-c++ make cmake python3-devel the_silver_searcher figlet || \
                sudo yum install -y vim ctags cscope gcc gcc-c++ make cmake python3-devel the_silver_searcher figlet
                ;;
            arch|manjaro)
                echo_info "Installing dependencies for Arch/Manjaro..."
                sudo pacman -Sy --noconfirm vim ctags cscope base-devel cmake python the_silver_searcher figlet
                ;;
            *)
                echo_warn "Unknown Linux distribution: $DISTRO"
                echo_warn "Please install manually: vim, ctags, cscope, build tools, cmake, python3-dev, ag, figlet"
                read -p "Continue anyway? (y/N) " -n 1 -r
                echo
                if [[ ! $REPLY =~ ^[Yy]$ ]]; then
                    exit 1
                fi
                ;;
        esac
    elif [[ "$OS" == "macOS" ]]; then
        echo_info "Installing dependencies for macOS..."
        if ! command -v brew &> /dev/null; then
            echo_error "Homebrew not found. Please install Homebrew first:"
            echo "  /bin/bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\""
            exit 1
        fi
        brew install vim ctags cscope the_silver_searcher cmake figlet
    else
        echo_error "Unsupported operating system: $OS"
        exit 1
    fi
}

# Main installation
detect_os
install_dependencies


# Install Vim plugin manager Vundle
echo_info "Installing Vundle plugin manager..."
if [ -d ~/.vim/bundle/Vundle.vim ]; then
    echo_warn "Vundle already installed, updating..."
    cd ~/.vim/bundle/Vundle.vim && git pull
    cd - > /dev/null
else
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# Save backup of vimrc file
if [ -f ~/.vimrc ]; then
    BACKUP_FILE=~/.vimrc_backup_$(date +%Y%m%d_%H%M%S)
    echo_info "Backing up existing .vimrc to $BACKUP_FILE"
    cp ~/.vimrc "$BACKUP_FILE"
fi

# Copy vimrc configuration
echo_info "Installing .vimrc configuration..."
cp .vimrc ~/

# Copy color schemes
if [ ! -d ~/.vim ]; then
    mkdir -p ~/.vim
fi
echo_info "Installing color schemes..."
cp -r ./colors ~/.vim/

# Install additional plugins manually
echo_info "Installing additional plugins..."
TEMP_DIR=$(mktemp -d)
cd "$TEMP_DIR"

if [ ! -d ~/.vim/plugin ]; then
    mkdir -p ~/.vim/plugin
fi

# SrcExpl plugin
if [ ! -d ~/.vim/bundle/SrcExpl ]; then
    git clone https://github.com/vim-scripts/SrcExpl.git
    if [ -d SrcExpl ]; then
        cp -r SrcExpl ~/.vim/bundle/
    fi
fi

# Trinity plugin
git clone https://github.com/vim-scripts/Trinity.git
if [ -f Trinity/plugin/trinity.vim ]; then
    cp Trinity/plugin/trinity.vim ~/.vim/plugin/
fi

# vim-g plugin
git clone https://github.com/szw/vim-g.git
if [ -f vim-g/plugin/g.vim ]; then
    cp vim-g/plugin/g.vim ~/.vim/plugin/
fi

cd - > /dev/null
rm -rf "$TEMP_DIR"

# Install eunuch plugin
echo_info "Installing eunuch plugin..."
mkdir -p ~/.vim/pack/tpope/start
if [ -d ~/.vim/pack/tpope/start/eunuch ]; then
    echo_warn "Eunuch already installed, updating..."
    cd ~/.vim/pack/tpope/start/eunuch && git pull
    cd - > /dev/null
else
    cd ~/.vim/pack/tpope/start
    git clone https://tpope.io/vim/eunuch.git
    cd - > /dev/null
fi
vim -u NONE -c "helptags ~/.vim/pack/tpope/start/eunuch/doc" -c q 2>/dev/null

# Install all Vundle plugins
echo_info "Installing Vundle plugins (this may take a few minutes)..."
vim -c 'PluginInstall' -c 'qa!' 2>/dev/null

echo_info "Installation complete!"
echo_info "Launch vim to start using your new configuration."
echo ""
echo_warn "Note: Some plugins may require additional configuration or dependencies."
echo_warn "Check the README.md for more information about key mappings and features."