```
    ██╗   ██╗██╗███╗   ███╗    ██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗
    ██║   ██║██║████╗ ████║    ██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝
    ██║   ██║██║██╔████╔██║    ██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗
    ╚██╗ ██╔╝██║██║╚██╔╝██║    ██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║
     ╚████╔╝ ██║██║ ╚═╝ ██║    ██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║
      ╚═══╝  ╚═╝╚═╝     ╚═╝    ╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝
```

## Features

- #### Completion
  - To invoke Omni completion, press the `Ctrl + x` key combination (`<C-x>`) and then press one of the following key combinations to get the desired result:
  - `<Ctrl + ]>` - Tags file completion
  - `<Ctrl + d>` - Definition completion
  - `<Ctrl + f>` - Filename completion (based on files in `$PWD`)
  - `<Ctrl + i>` - Path pattern completion
  - `<Ctrl + k>` - Dictionary completion
  - `<Ctrl + l>` - Whole line completion
  - `<Ctrl + n>` - Keyword local completion
  - `<Ctrl + o>` - Omni completion completion
  - `<Ctrl + v>` - Command line completion

  If matching names are found, a pop-up menu opens which can be navigated using the `<C-n>` and `<C-p>` keys.
  
- #### File Tree
  - To use the tile file tree, press `<leader><leader>` **(space)** and a left tab will open showing the current working directory including it's files. You can always close it by pressing the same combination.
- #### Auto Pairing
  - It supports auto pairing for the following keys: **`()`, `{}`, `[]`** with flexible functionality. Here's how it works:
    - `(` = `()`
    - `((` = `(`
    - `()` = `()`
- #### Status Line
  - This configuration provides a minimal status line with Git Branch integration. The following returns the current branch or an empty string if there is no git repository.
- #### Git Integration in Vim
  - Quickly perform Git operations directly from Vim with the following mappings:
  - `<Leader> + gs` - Show the current Git status
  - `<Leader> + ga` - Stage changes in the current file
  - `<Leader> + gc` - Commit staged changes with a prompt for your commit
  - `<Leader> + gp` - Push commits to the remote repository

## Requirements

- [Vim](https://www.vim.org/) >= **5.0** (OMNI completion features / Intellisense code completion)
- [Git](https://git-scm.com/) - Statusbar functionality and installation script

## Installation

1. #### Run the Installation Script

   Execute the following command to download and run the installation script:

   ```bash
   bash <(curl -s https://raw.githubusercontent.com/franciscoavilaluna/vim/main/scripts/install.sh)
   ```

2. #### Start Vim

   You can now start Vim using the following command:

   `vim`

## Additional Notes

- #### Updating Configuration: To update the configuration, pull the latest changes from the repository:

  ```bash
  cd ~/.vim
  git pull origin main
  ```

- #### Troubleshooting: If you encounter issues, ensure that all files are correctly sourced in `.vimrc` and check for any errors during startup.

## File Structure

```
$HOME/
├── .vim/
│   ├── vimSettings/
│   │   ├── auto-pairing/
│   │   ├── autocommands/
│   │   ├── colors/
│   │   ├── completion/
│   │   ├── display/
│   │   ├── mappings/
│   │   ├── sounds/
│   │   └── statusline/
│   └── .vimrc
└── .vimrc (symlink)
```

- #### Tip
  Remove the `.git` directory if not needed after installation.
