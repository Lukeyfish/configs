" General settings
set nocompatible              " Turn off compatibility with classic Vi (allows for more modern Vim features)
                              
" Theme and aesthetics
set background=dark           " Set the default background color to dark (this affects some color schemes)

" Enable line numbers
set number                    " Show line numbers

" Show matching brackets
set showmatch                 " When a bracket is inserted, briefly jump to the matching one

" Set search to highlight matches
set hlsearch                  " Highlight all search results

" Set tab width
set tabstop=4                 " Number of spaces a tab in the file counts for
set shiftwidth=4              " Number of spaces used for each step of (auto)indent
set expandtab                 " Use spaces instead of tabs

" Enable mouse in all modes
set mouse=a                   " Enable mouse support in all modes

" Set a ruler on the right to show position
set ruler                     " Show the cursor position all the time

" Enable line wrapping
set wrap                      " Wrap lines longer than the width of the window

" Enable syntax highlighting
syntax on                     " Turn on syntax highlighting

" Set UTF-8 as default encoding
set encoding=utf-8            " Use UTF-8 as the default encoding

" Set the status line to always show
set laststatus=2              " Always show the status line (0 = never, 1 = only if there are at least two windows, 2 = always)

" Set auto indentation
set smartindent               " Try to be smart when automatically inserting indents
set autoindent                " Maintain same level of indent as the line above

" Set clipboard to work with system clipboard
set clipboard=unnamedplus     " Use the system clipboard for all yank, delete, change, and put operations

" Set wildmenu for command-line completion
set wildmenu                  " Show a visual list for command-line completions

" Set to show command in the bottom bar as you type
set showcmd                   " Display incomplete commands in the status line

" Search as characters are entered, rather than waiting for Enter key
set incsearch                 " Incremental search

" Ignore case when searching
set ignorecase                " Make search case insensitive

" When searching try to be smart about cases 
set smartcase                 " Override 'ignorecase' if the search pattern contains upper case characters

" Faster redraw
set ttyfast                   " Assume a fast terminal connection (improves redraw speed)

" Set history length
set history=1000              " Remember 1000 lines in command line history

" For better display for split windows
set splitbelow                " New horizontal split windows are created below the current window
set splitright                " New vertical split windows are created to the right of the current window

" Automatically read file changes
set autoread                  " Reload files that have been changed outside of Vim

" Scroll off margin - start scrolling 3 lines before the horizontal or vertical window border
set scrolloff=3               " Keep at least 3 lines above/below the cursor when scrolling vertically
set sidescrolloff=5           " Keep at least 5 columns to the left/right of the cursor when scrolling horizontally

" Highlight entire current line and column
set cursorline
set cursorcolumn

" Use relative line numbering
set number
"set relativenumber

" Custom Text Traversal Section

" Word traversal with control+(left or rightarrow)
nnoremap <C-Right> w
nnoremap <C-Left> b

" Selects by word with control+shift+(left or right arrow)
nnoremap <C-S-right> v w
nnoremap <C-S-left> v b

" ctrl shift c to copy selected text
nnoremap <C-S-c> "+y
vnoremap <C-S-c> "+y

" ctrl arrow up or down moves 3 at a time
nnoremap <C-Up> 3k
nnoremap <C-Down> 3j


