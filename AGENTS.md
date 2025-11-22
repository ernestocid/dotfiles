# AGENTS.md

## Commands
- **Install**: `./install.sh` - Creates symbolic links for all config files
- **Vim plugins**: Run `:PluginInstall` in vim after linking vimrc
- **Tmux plugins**: Press `prefix + I` to install TPM plugins
- **Reload tmux**: `tmux source-file ~/.tmux.conf` or `prefix + r`

## Code Style Guidelines
- **Shell scripts**: Use bash, 2-space indentation, absolute paths with `${BASEDIR}`
- **Vim config**: Use 2-space indentation, double quotes for strings, group related settings
- **Tmux config**: Use `set -g` for global options, `bind-key` for mappings
- **File organization**: Keep configs in root, use descriptive names (zshrc, vimrc, tmux.conf)
- **Comments**: Use `#` for shell/tmux, `"` for vim, keep explanations brief
- **Paths**: Always use absolute paths, avoid relative references in dotfiles