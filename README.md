```
            ██╗   ██╗██╗███╗   ███╗    ██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗
            ██║   ██║██║████╗ ████║    ██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝
            ██║   ██║██║██╔████╔██║    ██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗
            ╚██╗ ██╔╝██║██║╚██╔╝██║    ██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║
             ╚████╔╝ ██║██║ ╚═╝ ██║    ██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║
              ╚═══╝  ╚═╝╚═╝     ╚═╝    ╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝
```

## Features
* #### Completion
    * It uses the omnifunction, press `<C-x><C-o>` while open in **`INSERT`** mode for word completion, `<C-x><C-f>` for files and `<C-x><C-t>` for tags. If matching names are found, a pop-up menu opens which can be navigated using the `<C-n>` and `<C-p>` keys.

* #### File Tree
    * To use the tile file tree, press `<leader><leader>` **(space)** and a left tab will open showing the current working directory including it's files. You can always close it by pressing the same combination.
* #### Auto Pairing
    * It supports auto pairing for the following keys: **`()`, `{}`, `[]`, `<>`**
* #### Status Line
    * This configuration provides a minimal status line with Git Branch integration. The following returns the current branch or an empty string if there is no git repository.

## Requirements
* [Vim](https://www.vim.org/) >= **5.0** (OMNI completion features / Intellisense code completion)
* [Git](https://git-scm.com/) - Any version

## Instalation
* #### Make a backup of your current .vimrc file
`mv .vimrc{,.bak}`

* #### Clone the repo
`https://github.com/franciscoavilaluna/vim $HOME/`

* #### Access the `vim` directory
`cd vim`

* #### Move the files to the `$HOME/` directory
`mv .vimrc vimSettings/ $HOME/`

* #### Start Vim!
`vim`

## File Structure
```
$HOME/
├── vimSettings/
│   ├── auto-pairing/
│   ├── autocommands/
│   ├── colors/
│   ├── completion/
│   ├── display/
│   ├── mappings/
│   ├── sounds/
│   └── statusline/
└── init.lua

```
* #### Tip
Remove the `.git` directory if not needed after installation

`rm -rf ~/.config/nvim/.git`
