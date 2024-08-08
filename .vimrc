" ~/.vimrc

" Set the runtime path to include the vimSettings directory
set runtimepath+=~/.vim/vimSettings

" Source the main configuration file from the vimSettings directory
source ~/.vim/vimSettings/main.vim

" Source mappings
source ~/.vim/vimSettings/mappings/MappingsSettings

" Source colors
source ~/.vim/vimSettings/colors/ColorsSettings

" Source display settings
source ~/.vim/vimSettings/display/DisplaySettings

" Source auto-pairing settings
source ~/.vim/vimSettings/auto-pairing/AutoPairingSettings

" Source autocommands settings
source ~/.vim/vimSettings/autocommands/AutoCommandsSettings

" Source statusline settings
source ~/.vim/vimSettings/statusline/StatuslineSettings

" Source sounds settings
source ~/.vim/vimSettings/sounds/SoundsSettings

" Source Omni Completion
source ~/.vim/vimSettings/completion/CompletionSettings
