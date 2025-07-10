# Vim Configuration Setup

A comprehensive Vim 8 environment setup with pre-configured plugins for enhanced productivity in software development.

## Features

- **Plugin Management**: Uses Vundle for easy plugin installation and management
- **Code Navigation**: Trinity plugin suite (NERD Tree, Taglist, Source Explorer)
- **Syntax Highlighting**: Custom color schemes (Molokai, Smyck)
- **Code Completion**: Multiple completion plugins for various languages
- **Git Integration**: Fugitive, GitGutter for version control
- **File Search**: CtrlP, Ag (Silver Searcher) for fast file and content searching
- **Code Analysis**: Syntastic, ALE for real-time syntax checking
- **Python Support**: Jedi-vim for Python development
- **Text Manipulation**: Multiple cursors, surround, text objects
- **UI Enhancements**: Airline status bar, indent guides

## Prerequisites

### Linux (Ubuntu/Debian)
- Git
- Python 3
- Build essentials

### macOS
- Homebrew
- Git
- Python 3

## Installation

1. Clone this repository:
```bash
git clone https://github.com/yourusername/vim_setting.git
cd vim_setting
```

2. Run the installation script:
```bash
chmod +x install.sh
./install.sh
```

This will:
- Install Vim 8 and required tools (ctags, cscope, ag, etc.)
- Backup your existing `.vimrc` file
- Install Vundle plugin manager
- Copy configuration files and color schemes
- Install all configured Vim plugins

3. Launch Vim and wait for plugin installation to complete:
```bash
vim
```

## Key Mappings

### General Navigation
- `<Ctrl-H/J/K/L>` - Navigate between windows (left/down/up/right)
- `<leader>T` - Create new buffer
- `<leader>l` - Next buffer
- `<leader>h` - Previous buffer
- `<leader>bq` - Close current buffer

### Plugin Shortcuts
- `<F1>` - Toggle indent guides
- `<F2>` - Toggle Tagbar
- `<F3>` - Toggle Source Explorer
- `<F4>` - Toggle NERD Tree
- `<F5>` - Show yank history
- `<F6>` - Toggle Gundo (undo tree)
- `<F7>` - Toggle ALE (linting)
- `<F8>` - Toggle cursorline
- `<F9>` - Toggle Trinity (all panels)

### File Search
- `<Ctrl-P>` - Open CtrlP file search
- `:Ag <pattern>` - Search content with Silver Searcher

### Code Navigation
- `<Ctrl-F>` - Find current file in NERD Tree
- `<leader>g` - Go to definition (YouCompleteMe)
- `<leader>d` - Go to declaration
- `<leader>n` - Find references

### Text Manipulation
- `<Ctrl-N>` - Multi-cursor next match
- `cs/ds/yss` - Surround operations
- `,l` - Toggle argument wrapping
- `,f/,g` - Quick filter operations

### Git Operations
- `:Gstatus` - Git status
- `:Gdiff` - Git diff
- `:Gblame` - Git blame

## Configuration Files

- `.vimrc` - Main Vim configuration file
- `install.sh` - Installation script
- `vimrc_update.sh` - Quick vimrc update script
- `mkcscope.sh` - Generate cscope database for C/C++ projects
- `colors/` - Custom color schemes

## Customization

### Adding Plugins
Edit `.vimrc` and add new plugins between `call vundle#begin()` and `call vundle#end()`:
```vim
Plugin 'username/repository'
```

Then run `:PluginInstall` in Vim.

### Modifying Key Mappings
Key mappings can be customized in the `.vimrc` file. Look for `nmap`, `imap`, `vmap` commands.

### Color Schemes
The setup includes Molokai and Smyck color schemes. Change the active scheme in `.vimrc`:
```vim
colorscheme molokai
```

## Updating

To update your vimrc configuration:
```bash
./vimrc_update.sh
```

To update plugins:
```vim
:PluginUpdate
```

## Utilities

### Generate Cscope Database
For C/C++ projects, generate a cscope database:
```bash
./mkcscope.sh [directory]
```

## Troubleshooting

### Plugin Installation Failed
- Ensure you have git installed
- Check internet connectivity
- Try `:PluginInstall!` to force reinstall

### Color Scheme Not Working
- Ensure your terminal supports 256 colors
- Try setting `export TERM=xterm-256color`

### Performance Issues
- Disable unused plugins in `.vimrc`
- Consider using Neovim for better performance

## Contributing

Feel free to submit issues and enhancement requests!

## License

This configuration is provided as-is for personal use.